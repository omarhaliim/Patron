import 'dart:convert';
// Post postFromJson(String str) => Post.fromJson(json.decode(str));
List<Datum> postFromJson(String str) =>
    List<Datum>.from(json.decode(str)['data'].map((x) => Datum.fromJson(x)));

String postToJson(List<getUserClass> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class getUserClass {
  getUserClass({
    required this.after,
    required this.hasMore,
    required this.data,
  });

  String after;
  bool hasMore;
  List<Datum> data;

  factory getUserClass.fromJson(Map<String, dynamic> json) => getUserClass(
    after: json["after"],
    hasMore: json["has_more"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "after": after,
    "has_more": hasMore,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.created,
    required this.modified,
    required this.userType,
    required this.status,
    required this.statusReasonCode,
    required this.directorList,
    required this.signatureList,
    required this.shareholderList,
    required this.defaultUser,
  });

  String id;
  String firstName;
  String lastName;
  DateTime created;
  DateTime modified;
  String userType;
  String status;
  String statusReasonCode;
  List<dynamic> directorList;
  List<dynamic> signatureList;
  List<dynamic> shareholderList;
  bool defaultUser;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    created: DateTime.parse(json["created"]),
    modified: DateTime.parse(json["modified"]),
    userType: json["user_type"],
    status: json["status"],
    statusReasonCode: json["status_reason_code"],
    directorList: List<dynamic>.from(json["director_list"].map((x) => x)),
    signatureList: List<dynamic>.from(json["signature_list"].map((x) => x)),
    shareholderList:
    List<dynamic>.from(json["shareholder_list"].map((x) => x)),
    defaultUser: json["default_user"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "last_name": lastName,
    "created": created.toIso8601String(),
    "modified": modified.toIso8601String(),
    "user_type": userType,
    "status": status,
    "status_reason_code": statusReasonCode,
    "director_list": List<dynamic>.from(directorList.map((x) => x)),
    "signature_list": List<dynamic>.from(signatureList.map((x) => x)),
    "shareholder_list": List<dynamic>.from(shareholderList.map((x) => x)),
    "default_user": defaultUser,
  };
}