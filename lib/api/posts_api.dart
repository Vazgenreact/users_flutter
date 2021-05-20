import 'dart:convert';

import 'package:weather_app/models/users_model.dart';
import 'package:weather_app/utils/constants.dart';
import 'package:http/http.dart' as http;

class UsersApi {
  Future<List<UsersForecast>> fetchUsers() async {
    var uri = Uri.https(Constants.POSTS_BASE_URL, Constants.POSTS_USERS);

    var response = await http.get(uri);
    print('response: ${response?.body}');

    if (response.statusCode == 200) {
      var list = json
          .decode(response.body)
          .map((value) => UsersForecast.fromJson(value))
          .toList();
      return list;
    } else {
      throw Exception('Error resoponse');
    }
  }
}
