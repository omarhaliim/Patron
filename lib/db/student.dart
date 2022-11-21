import 'package:omar_s_application2/db/db_provider.dart';

class Student {
  late int student_id;
  late String student_name;
  late String fees;
  late String grade;

  Student({
    required this.student_name,
    required this.fees,
    required this.grade,
  });

  /// serialise object when writing to database
  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      DatabaseProvider.COLUMN_STUDENT_ID: student_id,
      DatabaseProvider.COLUMN_STUDENT_NAME: student_name,
      DatabaseProvider.COLUMN_FEES: fees,
      DatabaseProvider.COLUMN_GRADE: grade,
    };

    return map;
  }

  /// deserialise object when reading from database
  Student.fromMap(Map<String, dynamic> map) {
    student_id = map[DatabaseProvider.COLUMN_STUDENT_ID];
    student_name = map[DatabaseProvider.COLUMN_STUDENT_NAME];
    fees = map[DatabaseProvider.COLUMN_FEES];
    grade = map[DatabaseProvider.COLUMN_GRADE];
  }
}
