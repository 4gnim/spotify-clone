import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthRemoteRepository {
  Future<void> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      var url = Uri.parse('http://192.168.1.9:8000/auth/users/');
      var response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'username': name,
          'email': email,
          'password': password,
        }),
      );
      print(response.body);
      print(response.statusCode);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> login({
    required String name,
    required String password,
  }) async {
    try {
      var url = Uri.parse('http://192.168.1.9:8000/auth/token/login');
      var response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'username': name,
          'password': password,
        }),
      );
      print(response.body);
      print(response.statusCode);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
