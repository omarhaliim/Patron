import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io';
import 'package:omar_s_application2/db/db_provider.dart';

class User {
  late int id;
  late String name;
  late String password;
  late String phone;
  late String accountStatus;
  late String loginStatus;

  User(
      {required this.id,
      required this.name,
      required this.password,
      required this.phone,
      required this.accountStatus,
      required this.loginStatus});

  /// serialise object when writing to database
  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      DatabaseProvider.COLUMN_ID: id,
      DatabaseProvider.COLUMN_NAME: name,
      DatabaseProvider.COLUMN_PASSWORD: password,
      DatabaseProvider.COLUMN_PHONE: phone,
      DatabaseProvider.COLUMN_ACCOUNT_STATUS: accountStatus,
      DatabaseProvider.COLUMN_LOGIN_STATUS: loginStatus,
    };

    return map;
  }

  /// deserialise object when reading from database
  User.fromMap(Map<String, dynamic> map) {
    id = map[DatabaseProvider.COLUMN_ID];
    name = map[DatabaseProvider.COLUMN_NAME];
    password = map[DatabaseProvider.COLUMN_PASSWORD];
    phone = map[DatabaseProvider.COLUMN_PHONE];
    accountStatus = map[DatabaseProvider.COLUMN_ACCOUNT_STATUS];
    loginStatus = map[DatabaseProvider.COLUMN_LOGIN_STATUS];
  }
}
