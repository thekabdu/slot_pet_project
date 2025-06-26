import 'package:bloc/bloc.dart';
import 'package:clot/core/di/service_locator.dart';
import 'package:clot/features/auth/data/auth_service.dart';
import 'package:clot/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:meta/meta.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitial()) {
    on<ValidateEmail>((event, emit) {
      if (_isValidEmail(event.email)) {
        emit(EmailValid(true));
      } else {
        emit(EmailInvalid("Invalid email format"));
      }
    });

    on<SignInWithPassword>((event, emit) async {
      emit(SignInLoading());
      await Future.delayed(const Duration(seconds: 1)); // имитация API

      // Сохраняем токен и уведомляем AuthBloc
      final authBloc = sl<AuthBloc>();
      await sl<AuthService>().saveToken(event.password);
      authBloc.add(const AuthEvent.loggedIn('fake_token'));

      emit(SignInSuccess());
    });
  }

  bool _isValidEmail(String email) {
    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegex.hasMatch(email);
  }
}
