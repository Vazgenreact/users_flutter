import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:weather_app/api/posts_api.dart';
import 'package:weather_app/models/users_model.dart';

class UsersScreen extends StatefulWidget {
  @override
  _UsersScreenState createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  Future<List<UsersForecast>> _users;

  @override
  void initState() {
    super.initState();
    _users = UsersApi().fetchUsers();
    debugger(message: _users.toString());

    _users.then((value) {
      print(value[0].name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('users'),
    );
  }
}
