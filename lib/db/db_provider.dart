import 'package:omar_s_application2/db/student.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'package:omar_s_application2/db/user.dart';
// this class responsible for performing all operations related to our database.

class DatabaseProvider {
  static const String TABLE_USER = 'User';
  static const String COLUMN_ID = 'id';
  static const String COLUMN_NYM_ID = 'nym_id';
  static const String COLUMN_NAME = 'name';
  static const String COLUMN_PASSWORD = 'password';
  static const String COLUMN_PHONE = 'phone';
  static const String COLUMN_ACCOUNT_STATUS = 'account_status';
  static const String COLUMN_LOGIN_STATUS = 'login_status';
  static const String COLUMN_USERNAME = 'user_name';

  static const String TABLE_STUDENT = 'Student';
  static const String COLUMN_STUDENT_ID = 'student_id';
  static const String COLUMN_STUDENT_NAME = 'student_name';
  static const String COLUMN_FEES = 'fees';
  static const String COLUMN_GRADE = 'grade';

// make this a singleton class
  DatabaseProvider._privateConstructor();
  static final DatabaseProvider db = DatabaseProvider._privateConstructor();

  // single reference to the database throughout the app
  static Database? _database;

  Database? getDB() {
    return _database;
  }

  void nullifyDB() {
    _database = null;
  }

  dropTable() async {
    await _database!.execute("DROP TABLE IF EXISTS $TABLE_USER");
  }

  Future<Database> get database async => _database ??= await createDatabase();
  //Future<Database> get database async => await createDatabase();

  Future<void> deleteDatabase(String path) =>
      databaseFactory.deleteDatabase(path);

  Future<Database> createDatabase() async {
    //print(_database);
    String dbPath = await getDatabasesPath();

    //  plugin which returns the default databases location.
    // On Android, it’s usually data/data//databases
    // and on iOS, it’s the Documents directory.
    return await openDatabase(
      join(dbPath, 'userDB.db'),
      version: 1,
      onCreate: (Database database, int version) async {
        print('Creating user table');
        print('Creating student table');

        await database.execute(
          "CREATE TABLE $TABLE_USER ("
          "$COLUMN_ID INTEGER PRIMARY KEY,"
          "$COLUMN_NYM_ID TEXT,"
          "$COLUMN_NAME TEXT,"
          "$COLUMN_PASSWORD TEXT,"
          "$COLUMN_PHONE TEXT,"
          "$COLUMN_ACCOUNT_STATUS TEXT,"
          "$COLUMN_LOGIN_STATUS TEXT,"
          "$COLUMN_USERNAME TEXT"
          ")",
        );
        await database.execute('''
       create table $TABLE_STUDENT (
        $COLUMN_STUDENT_ID integer primary key ,
        $COLUMN_STUDENT_NAME text not null,
        $COLUMN_FEES text not null,
        $COLUMN_GRADE text not null        
       )''');
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
        COLUMN_NYM_ID,
        COLUMN_NAME,
        COLUMN_PASSWORD,
        COLUMN_PHONE,
        COLUMN_ACCOUNT_STATUS,
        COLUMN_LOGIN_STATUS,
        COLUMN_USERNAME
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
    user.id = await getID();
    await db.insert(TABLE_USER, user.toMap()); // serialise
    return user;
  }

  Future<int> getID() async {
    List list = await getUsers();

    if (list.length == 0)
      return 1;
    else
      return (list[list.length - 1] as User).id + 1;
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
          COLUMN_NYM_ID,
          COLUMN_NAME,
          COLUMN_PASSWORD,
          COLUMN_PHONE,
          COLUMN_ACCOUNT_STATUS,
          COLUMN_LOGIN_STATUS,
          COLUMN_USERNAME
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
          COLUMN_NYM_ID,
          COLUMN_NAME,
          COLUMN_PASSWORD,
          COLUMN_PHONE,
          COLUMN_ACCOUNT_STATUS,
          COLUMN_LOGIN_STATUS,
          COLUMN_USERNAME
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

  Future<List<User>> getUserName(String username) async {
    final db = await database; // database getter called

    var result = await db.query(TABLE_USER,
        columns: [
          COLUMN_ID,
          COLUMN_NYM_ID,
          COLUMN_NAME,
          COLUMN_PASSWORD,
          COLUMN_PHONE,
          COLUMN_ACCOUNT_STATUS,
          COLUMN_LOGIN_STATUS,
          COLUMN_USERNAME
        ],
        where: '$COLUMN_USERNAME = ?',
        whereArgs: ['$username']);

    List<User> userList = [];

    result.forEach((currentuser) {
      User user = User.fromMap(currentuser); // serialise

      userList.add(user);
    });

    return userList;
  }

  Future<List<Student>> getStudents() async {
    final db = await database; // database getter called
    // from the dream table, get all rows (records) in the 1. descending order of their id, 2. columns returned should be id, title, and details
    // this returns a List<Map<String, dynamic>>
    var students = await db.query(
      TABLE_STUDENT,
      columns: [
        COLUMN_STUDENT_ID,
        COLUMN_STUDENT_NAME,
        COLUMN_FEES,
        COLUMN_GRADE,
      ],
    );
    // query :  method is responsible for performing all read queries to a certain table.
    List<Student> studentList = [];

    students.forEach((currentStudent) {
      Student student = Student.fromMap(currentStudent); // deserialise

      studentList.add(student);
    });

    return studentList;
  }

  Future<int> getIDStudent() async {
    List list = await getStudents();

    if (list.length == 0)
      return 1;
    else
      return (list[list.length - 1] as Student).student_id + 1;
  }

  Future<Student> insertStudent(Student student) async {
    final db = await database; // database getter called
    student.student_id = await getIDStudent();
    await db.insert(TABLE_STUDENT, student.toMap()); // serialise
    return student;
  }
}
//  everytime we want to query on our user table, we can simply use the TABLE_USER

//class needs to be a singleton class, so we can create just one object of this class and use its state globally throughout the app whenever we want to use one of its methods.
