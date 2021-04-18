import 'dart:async';
import 'package:bloc_login/models/user.dart';
import 'package:uuid/uuid.dart';

class UserRepository {
  User? _user;

  Future<User?> getUser() async {
    if (_user != null) {
      return _user;
    }
    return Future.delayed(
      Duration(milliseconds: 300),
      () => _user = User(Uuid().v4()),
    );
  }
}
