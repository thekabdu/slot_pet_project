import 'package:bloc/bloc.dart';
import 'package:clot/features/product_detail/data/models/product_detail_model.dart';
import 'package:clot/features/product_detail/data/repository/product_detail_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail_event.dart';
part 'product_detail_state.dart';
part 'product_detail_bloc.freezed.dart';

class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  final ProductDetailRepository repository;
  ProductDetailBloc(this.repository) : super(const _Initial()) {
    on<_Started>((event, emit) async {
      emit(const ProductDetailState.loading());
      final result = await repository.getProductDetail(event.id);
      result.fold(
        (failure) => emit(
            const ProductDetailState.error("Failed to fetch product detail")),
        (products) => emit(ProductDetailState.loaded(products)),
      );
    });
  }
}
