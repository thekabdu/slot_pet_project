part of 'sign_in_bloc.dart';

@immutable
sealed class SignInState {}

final class SignInInitial extends SignInState {}

class EmailValid extends SignInState {
  final bool success;
  EmailValid(this.success);
}

class EmailInvalid extends SignInState {
  final String message;
  EmailInvalid(this.message);
}

class SignInSuccess extends SignInState {}

class SignInLoading extends SignInState {}
