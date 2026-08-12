import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginButtonPressed>((event, emit) {
      emit(LoginLoading());

      if (event.email.isNotEmpty && event.password.isNotEmpty) {
        emit(LoginSuccess());
      } else {
        emit(LoginFailure('Please enter email and password'));
      }
    });
  }
}
