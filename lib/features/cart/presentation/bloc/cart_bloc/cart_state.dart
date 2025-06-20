part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    required List<ProductDetailHiveModel> items,
    required int totalPrice,
  }) = _CartState;

  factory CartState.initial() => const CartState(items: [], totalPrice: 0);
}
