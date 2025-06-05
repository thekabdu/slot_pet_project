part of 'products_by_categories_bloc.dart';

@freezed
class ProductsByCategoriesEvent with _$ProductsByCategoriesEvent {
  const factory ProductsByCategoriesEvent.started(String type) = _Started;
  const factory ProductsByCategoriesEvent.loadMore() = _LoadMore;
}
