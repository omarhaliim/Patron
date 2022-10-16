import 'dart:convert';
import 'package:omar_s_application2/models/getUserClass.dart';
import 'package:http/http.dart' as http;
 // getPosts
class RemoteService {
  Future<List<Datum>?> getUsers() async {
    var client = http.Client();

    var uri = Uri.parse('https://api.sand.platform.nymcard.com/v1/users/');
    var response = await client.get(uri,
        headers: {'apikey': 'tenant64-84tgdd96-2d4f-4834-ab68-8tg751a5c051'});
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
  }


}