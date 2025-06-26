part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuthStatus() = _CheckAuthStatus;
  const factory AuthEvent.loggedIn(String token) = _LoggedIn;
  const factory AuthEvent.loggedOut() = _LoggedOut;
}