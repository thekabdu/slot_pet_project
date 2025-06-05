part of 'products_by_categories_bloc.dart';

@freezed
class ProductsByCategoriesState with _$ProductsByCategoriesState {
  const factory ProductsByCategoriesState.initial() = _Initial;
  const factory ProductsByCategoriesState.loading() = _Loading;
  const factory ProductsByCategoriesState.loaded(
    List<ProductsModel> products,
    int page,
  ) = _Loaded;
  const factory ProductsByCategoriesState.error(String message) = _Error;
}
