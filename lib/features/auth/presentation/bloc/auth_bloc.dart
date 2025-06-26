import 'package:bloc/bloc.dart';
import 'package:clot/features/auth/data/auth_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService;
  AuthBloc(this._authService) : super(const _Initial()) {
    on<_CheckAuthStatus>((event, emit) {
      final loggedIn = _authService.isLoggedIn();
      emit(loggedIn ? const AuthState.authenticated() : const AuthState.unauthenticated());
    });

    on<_LoggedIn>((event, emit) async {
      await _authService.saveToken(event.token);
      emit(const AuthState.authenticated());
    });

    on<_LoggedOut>((event, emit) async {
      await _authService.logout();
      emit(const AuthState.unauthenticated());
    });
  }
}
