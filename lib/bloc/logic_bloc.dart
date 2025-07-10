import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fm/bloc/logic_state.dart';
import 'package:fm/bloc/login_event.dart';



class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<EmailChange>((event, emit) {
      emit(state.copyWith(email: event.email));
    });

    on<UserNameChange>((event, emit) {
      emit(state.copyWith(username: event.username));
    });

    on<PasswordChange>((event, emit) {
      emit(state.copyWith(password: event.password));
    });

    on<LoginSubmitted>((event, emit) async {
      emit(state.copyWith(isSubmitting: true, isFailure: false, isSuccess: false));

      await Future.delayed(const Duration(seconds: 1));

      final email = state.email.trim();
      final password = state.password.trim();
      final username = state.username.trim();

      if (email == "test@example.com" &&
          password == "password123" &&
          username == "Akshaya") {
        emit(state.copyWith(isSubmitting: false, isSuccess: true));
      } else {
        emit(state.copyWith(isSubmitting: false, isFailure: true));
      }
    });
  }
}
