import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/login_data.dart';

class LoginDataNotifier extends Notifier<LoginData?> {
  @override
  LoginData? build() => null;

  void setLoginData(String email, String password) {
    state = LoginData(email: email, password: password);
  }

  void clear() {
    state = null;
  }
}

final loginDataProvider = NotifierProvider<LoginDataNotifier, LoginData?>(
  () => LoginDataNotifier(),
);