import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  static final _storage = FlutterSecureStorage();

  static const String _loggedInKey = 'logged_in';

  static Future<void> setLoggedIn(bool value) async {
    await _storage.write(key: _loggedInKey, value: value.toString());
  }

  static Future<bool> isLoggedIn() async {
    final loggedIn = await _storage.read(key: _loggedInKey);
    return loggedIn == 'true';
  }

  static Future<void> logout() async {
    await _storage.delete(key: _loggedInKey);
  }
}
