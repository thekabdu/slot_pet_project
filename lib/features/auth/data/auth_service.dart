import 'package:hive/hive.dart';

abstract class AuthService {
  Future<void> saveToken(String token);
  Future<void> logout();
  bool isLoggedIn();
  String? getToken();
}

class AuthServiceImpl implements AuthService {
  final _box = Hive.box('auth');

  @override
  Future<void> saveToken(String token) async {
    await _box.put('token', token);
  }

  @override
  bool isLoggedIn() {
    return _box.get('token') != null;
  }

  @override
  String? getToken() {
    return _box.get('token');
  }

  @override
  Future<void> logout() async {
    await _box.delete('token');
  }
}
