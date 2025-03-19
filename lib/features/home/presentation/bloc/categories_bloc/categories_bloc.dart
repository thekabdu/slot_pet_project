import 'package:bloc/bloc.dart';
import 'package:clot/features/home/data/repository/categories_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_event.dart';
part 'categories_state.dart';
part 'categories_bloc.freezed.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final CategoriesRepository repository;
  CategoriesBloc(this.repository) : super(const CategoriesState.initial()) {
    on<CategoriesEvent>((event, emit) async {
     await event.map(started: (value) async {
        emit(const CategoriesState.loading());

        final result = await repository.getCategories();
        result.fold(
          (failure) => emit(const CategoriesState.error("Failed to fetch categories")),
          (categoriesModel) => emit(CategoriesState.fetch(categoriesModel.categories)),
        );
      });
    });
  }
}
