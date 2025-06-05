import 'package:bloc/bloc.dart';
import 'package:clot/features/home/data/models/products_model.dart';
import 'package:clot/features/home/data/repository/categories_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_by_categories_event.dart';
part 'products_by_categories_state.dart';
part 'products_by_categories_bloc.freezed.dart';

class ProductsByCategoriesBloc
    extends Bloc<ProductsByCategoriesEvent, ProductsByCategoriesState> {
  final CategoriesRepository repository;
  ProductsByCategoriesBloc(this.repository) : super(const _Initial()) {
    on<_Started>((event, emit) async {
      emit(const ProductsByCategoriesState.loading());

      final result = await repository.getProductsByCategory(event.type);

      result.fold(
        (failure) => emit(const ProductsByCategoriesState.error(
            "Failed to fetch products by Category")),
        (products) => emit(ProductsByCategoriesState.loaded(products, 1)),
      );
    });
    on<_LoadMore>((event, emit) {});
  }
}
