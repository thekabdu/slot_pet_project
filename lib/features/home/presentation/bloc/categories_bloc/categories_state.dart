part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = _Initial;
  const factory CategoriesState.loading() = _Loading;
  const factory CategoriesState.fetch(List<String> categories) = _Fetch;
  const factory CategoriesState.error(String message) = _Error;
}
