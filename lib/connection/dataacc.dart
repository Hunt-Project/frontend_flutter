import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class DataAcces {
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  Future<String?> getToken(String tkname) async {
    return await storage.read(key: tkname);
  }

  Future<void> setToken(String tkname, String tkvalue) async {
    return await storage.write(key: tkname, value: tkvalue);
  }

  Future<void> removeToken(String tkname) async {
    return await storage.delete(key: tkname);
  }
}
