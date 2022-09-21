import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

import 'dart:developer' as dev;

class Networking {
  final FlutterSecureStorage storage = const FlutterSecureStorage();
  String url = 'http://localhost:8000/api';

  Future<bool> isLogged() async {
    String? token = await storage.read(key: 'token');

    if (token != null || token!.isNotEmpty) {
      final response = await http.get(Uri.parse('${url}api/me'), headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      });
      dev.log(response.toString());
    }
    return false;
  }

  Future<http.Response> login(user, pass) async {
    final response = await http.get(Uri.parse(url));
    final token = http.post(Uri.parse('$url/login'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    Map<dynamic, dynamic> data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      // Credenziali corrette
      dev.log(data.toString());
      return response;
    } else if (response.statusCode == 401) {
      // Credenziali errate
      return response; //!
    } else {
      throw Exception('Server error or Unauthorized');
    }
  }

  Future<http.Response> register(mail, pass, user) async {
    var token = await http.post(Uri.parse(url + '/register'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode({
          "name": user,
          "email": mail,
          "password": pass,
        }));
    //
    dev.log(token.toString());

    if (token.statusCode == 200) {
      Map<dynamic, dynamic> data = jsonDecode(token.body);
      dev.log(data['access_token']);
      return token;
    } else if (token.statusCode == 422) {
      // I dati immessi non sono validi

      /* {
          "message": "The email must be a valid email address.",
          "errors": {
              "email": [
                  "The email must be a valid email address."
              ]
          }
      }*/

      return token; //!
    } else {
      throw Exception('Server error or Unauthorized: ${token.statusCode}');
    }
  }

  Future<bool> logout() async {
    String? token = await storage.read(key: 'token');
    final response = await http.get(Uri.parse(url + "/logout"), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    return response.statusCode == 200;
  }

  Future<http.Response> authRequest() async {
    String? token = await storage.read(key: 'token');
    final response = await http.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    return response;
  }
}
