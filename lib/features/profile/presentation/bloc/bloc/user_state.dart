part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.loading() = _Loading;
  const factory UserState.fetch(UserModel user) = _Fetch;
  const factory UserState.error(String message) = _Error;
}
