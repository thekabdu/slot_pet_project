part of 'sign_in_bloc.dart';

@immutable
sealed class SignInEvent {}

class ValidateEmail extends SignInEvent {
  final String email;
  ValidateEmail(this.email);
}
