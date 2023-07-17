import 'dart:convert';

import 'package:pendonor_sukarela/services/constanst.dart';
import 'package:http/http.dart' as http;

class AuthService {
  login(String no_hp, String password, String role) async {
    var _url = Uri.parse(ApiConstants.baseUrl + '/auth/login');

    final res = await http.post(_url, body: {
      "no_hp": no_hp,
      "password": password,
      "role": role,
    });

    var data = jsonDecode(res.body);

    return data;
  }
}
