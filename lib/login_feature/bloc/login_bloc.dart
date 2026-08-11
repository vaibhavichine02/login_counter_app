import 'login_event.dart';
import 'login_state.dart';

class LoginBloc {
  LoginState state = LoginInitial();

  void add(LoginEvent event) {
    if (event is LoginButtonPressed) {
      state = LoginLoading();

      if (event.email.isNotEmpty && event.password.isNotEmpty) {
        state = LoginSuccess();
      } else {
        state = LoginFailure(
          'Please enter email and password',
        );
      }
    }
  }
}
