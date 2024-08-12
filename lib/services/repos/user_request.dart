// import 'dart:developer';

import 'dart:developer';

import 'package:grad_progect/models/users.dart';
import 'package:grad_progect/services/api_base_url.dart';
import 'package:grad_progect/services/api_request.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepoApi {
    static Future<Users?> login(String email, String password) async {
    final response = await BaseRequest.dynamicRequest(
      path: ApiConstants.loginUrl,
      requestType: RequestType.POST,
      body: {"email": email, "password": password},
    );

    if (response == null || response['user'] == null || response['token'] == null) return null;

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('tokken', response['token']);
   
    log('tokken had been saved succesful');

    return Users.fromJson(response['user'] as Map<String, dynamic>);
  }


    static Future<Users?> register(String email, String password, String name) async {
    final response = await BaseRequest.dynamicRequest(
      path: ApiConstants.registerUrl,
      requestType: RequestType.POST,
      body: {
        "email": email,
        "password": password,
        "name": name,
      },
    );

    if (response == null || response['user'] == null || response['token'] == null) return null;

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('tokken', response['token']);

    return Users.fromJson(response['user'] as Map<String, dynamic>);
  }
}