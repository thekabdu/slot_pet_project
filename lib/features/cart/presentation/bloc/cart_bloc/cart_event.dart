part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.loadCart() = LoadCart;
  const factory CartEvent.incrementItem(int id) = IncrementItem;
  const factory CartEvent.decrementItem(int id) = DecrementItem;
  const factory CartEvent.removeItem(int id) = RemoveItem;
  const factory CartEvent.clearCart() = ClearCart;
}