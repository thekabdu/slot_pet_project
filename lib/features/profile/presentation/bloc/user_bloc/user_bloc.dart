import 'package:bloc/bloc.dart';
import 'package:clot/features/profile/data/models/user_model.dart';
import 'package:clot/features/profile/data/repository/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository repository;

  UserBloc(this.repository) : super(const UserState.loading()) {
    on<UserEvent>((event, emit) async {
      emit(const UserState.loading());
      final result = await repository.getUser();
      result.fold(
        (failure) => emit(const UserState.error("Failed to fetch products")),
        (user) => emit(UserState.fetch(user)),
      );
    });
  }
}
