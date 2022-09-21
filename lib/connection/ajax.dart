import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

import 'dart:developer' as dev;

class Networking {
  final FlutterSecureStorage storage = const FlutterSecureStorage();
  final String url = 'http://localhost:8000/api';

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

  Future<http.Response> register(user, pass) async {
    final response = await http.get(Uri.parse(url));
    final token = http.post(Uri.parse('$url/register'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    dev.log('$url/register');
    // Map<dynamic, dynamic> data = jsonDecode(response.body);
    dev.log(response.toString());

    if (response.statusCode == 200) {
      // Registrazione effettuata con successo

      return response;
    } else if (response.statusCode == 422) {
      // I dati immessi non sono validi
      return response; //!
    } else {
      throw Exception('Server error or Unauthorized: ${response.statusCode}');
    }
  }

  Future<bool> logout() async {
    String? token = await storage.read(key: 'token');
    final response = await http.get(Uri.parse("$url/logout"), headers: {
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
