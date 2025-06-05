import 'package:bloc/bloc.dart';
import 'package:clot/features/home/data/models/products_model.dart';
import 'package:clot/features/home/data/repository/products_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final ProductsRepository repository;
  static const int _limit = 10;

  ProductsBloc(this.repository) : super(const ProductsState.initial()) {
    
    on<_Fetch>((event, emit) async {
      emit(const ProductsState.loading());
      final result = await repository.getProducts(1, _limit);
      result.fold(
        (failure) =>
            emit(const ProductsState.error("Failed to fetch products")),
        (products) => emit(ProductsState.loaded(products, 1)),
      );
    });

    on<_LoadMore>((event, emit) async {
      if (state is _Loaded) {
        final currentState = state as _Loaded;
        final nextPage = currentState.page + 1;
        final result = await repository.getProducts(nextPage, _limit);
        result.fold(
          (failure) =>
              emit(const ProductsState.error("Failed to load more products")),
          (newProducts) {
            final allProducts = List<ProductsModel>.from(currentState.products)
              ..addAll(newProducts);
            emit(ProductsState.loaded(allProducts, nextPage));
          },
        );
      }
    });
  }
}
