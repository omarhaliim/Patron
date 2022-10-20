import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

import 'package:omar_s_application2/db/user.dart';
// this class responsible for performing all operations related to our database.

class DatabaseProvider {
  static const String TABLE_USER = 'User';
  static const String COLUMN_ID = 'id';
  static const String COLUMN_NAME = 'name';
  static const String COLUMN_PASSWORD = 'password';
  static const String COLUMN_PHONE = 'phone';
  static const String COLUMN_ACCOUNT_STATUS = 'account_status';
  static const String COLUMN_LOGIN_STATUS = 'login_status';

// make this a singleton class
  DatabaseProvider._privateConstructor();
  static final DatabaseProvider db = DatabaseProvider._privateConstructor();

  // single reference to the database throughout the app
  static Database? _database;

  Future<Database> get database async => _database ??= await createDatabase();
  //Future<Database> get database async => await createDatabase();

  Future<void> deleteDatabase(String path) =>
      databaseFactory.deleteDatabase(path);

  Future<Database> createDatabase() async {
    //print(_database);
    String dbPath = await getDatabasesPath();
    //print("ashraffff $dbPath");

    //  plugin which returns the default databases location.
    // On Android, it’s usually data/data//databases
    // and on iOS, it’s the Documents directory.
    return await openDatabase(
      join(dbPath, 'userDB.db'),
      version: 1,
      onCreate: (Database database, int version) async {
        print('Creating user table');

        await database.execute(
          "CREATE TABLE $TABLE_USER ("
          "$COLUMN_ID INTEGER PRIMARY KEY,"
          "$COLUMN_NAME TEXT,"
          "$COLUMN_PASSWORD TEXT,"
          "$COLUMN_PHONE TEXT,"
          "$COLUMN_ACCOUNT_STATUS TEXT,"
          "$COLUMN_LOGIN_STATUS TEXT"
          ")",
        );
      },
    );
  }

  Future<List<User>> getUsers() async {
    final db = await database; // database getter called

    // from the dream table, get all rows (records) in the 1. descending order of their id, 2. columns returned should be id, title, and details
    // this returns a List<Map<String, dynamic>>
    var users = await db.query(
      TABLE_USER,
      columns: [
        COLUMN_ID,
        COLUMN_NAME,
        COLUMN_PASSWORD,
        COLUMN_PHONE,
        COLUMN_ACCOUNT_STATUS,
        COLUMN_LOGIN_STATUS
      ],
    );
    // query :  method is responsible for performing all read queries to a certain table.
    List<User> userList = [];

    users.forEach((currentUser) {
      User user = User.fromMap(currentUser); // deserialise

      userList.add(user);
    });

    return userList;
  }

  Future<User> insert(User user) async {
    final db = await database; // database getter called
    user.id = await db.insert(TABLE_USER, user.toMap()); // serialise
    return user;
  }

  Future<int> delete(int id) async {
    final db = await database; // database getter called

    return await db.delete(
      TABLE_USER,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<int> update(User user) async {
    final db = await database; // database getter called

    return await db.update(
      TABLE_USER,
      user.toMap(),
      where: 'id = ?',
      whereArgs: [user.id],
    );
  }

  Future<List<User>> getUsersByKeyword(String keyword) async {
    final db = await database; // database getter called

    var users = await db.query(TABLE_USER,
        columns: [
          COLUMN_ID,
          COLUMN_NAME,
          COLUMN_PASSWORD,
          COLUMN_PHONE,
          COLUMN_ACCOUNT_STATUS,
          COLUMN_LOGIN_STATUS
        ],
        orderBy: '$COLUMN_ID desc',
        where: '$COLUMN_NAME LIKE ?',
        whereArgs: ['%$keyword%']);

    List<User> userList = [];

    users.forEach((currentuser) {
      User user = User.fromMap(currentuser); // serialise

      userList.add(user);
    });

    return userList;
  }

  Future<List<User>> getUser(String phone) async {
    final db = await database; // database getter called

    var result = await db.query(TABLE_USER,
        columns: [
          COLUMN_ID,
          COLUMN_NAME,
          COLUMN_PASSWORD,
          COLUMN_PHONE,
          COLUMN_ACCOUNT_STATUS,
          COLUMN_LOGIN_STATUS
        ],
        where: '$COLUMN_PHONE = ?',
        whereArgs: ['$phone']);

    List<User> userList = [];

    result.forEach((currentuser) {
      User user = User.fromMap(currentuser); // serialise

      userList.add(user);
    });

    return userList;
  }
}

//  everytime we want to query on our user table, we can simply use the TABLE_USER

//class needs to be a singleton class, so we can create just one object of this class and use its state globally throughout the app whenever we want to use one of its methods.
