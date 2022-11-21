import 'package:omar_s_application2/db/db_provider.dart';

class User {
  late int id;
  late String nymID;
  late String name;
  late String password;
  late String phone;
  late String accountStatus;
  late String loginStatus;
  late String UserName;

  User(
      {required this.nymID,
      required this.name,
      required this.password,
      required this.phone,
      required this.accountStatus,
      required this.loginStatus,
      required this.UserName});

  /// serialise object when writing to database
  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      DatabaseProvider.COLUMN_ID: id,
      DatabaseProvider.COLUMN_NYM_ID: nymID,
      DatabaseProvider.COLUMN_NAME: name,
      DatabaseProvider.COLUMN_PASSWORD: password,
      DatabaseProvider.COLUMN_PHONE: phone,
      DatabaseProvider.COLUMN_ACCOUNT_STATUS: accountStatus,
      DatabaseProvider.COLUMN_LOGIN_STATUS: loginStatus,
      DatabaseProvider.COLUMN_USERNAME: UserName,
    };

    return map;
  }

  /// deserialise object when reading from database
  User.fromMap(Map<String, dynamic> map) {
    id = map[DatabaseProvider.COLUMN_ID];
    nymID = map[DatabaseProvider.COLUMN_NYM_ID];
    name = map[DatabaseProvider.COLUMN_NAME];
    password = map[DatabaseProvider.COLUMN_PASSWORD];
    phone = map[DatabaseProvider.COLUMN_PHONE];
    accountStatus = map[DatabaseProvider.COLUMN_ACCOUNT_STATUS];
    loginStatus = map[DatabaseProvider.COLUMN_LOGIN_STATUS];
    UserName = map[DatabaseProvider.COLUMN_USERNAME];
  }
}
