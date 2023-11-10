import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_task/config/api_endpoints.dart';
import 'package:flutter_task/model/user_model.dart';
import 'package:http/http.dart' as http;

class ResgistrationController with ChangeNotifier {
  UserModel? userdata;
  adduser(UserModel user) async {
    final url = Uri.parse('${ApiEndpoints.baseUrl}${ApiEndpoints.users}');
    final response = await http.post(url, body: user.toJson());
  }
}
