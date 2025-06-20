import 'package:bloc/bloc.dart';
import 'package:clot/features/product_detail/data/models/product_detail_hive_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final Box<ProductDetailHiveModel> cartBox;
  CartBloc(this.cartBox) : super(CartState.initial()) {
    on<LoadCart>(_onLoadCart);
    on<IncrementItem>(_onIncrementItem);
    on<DecrementItem>(_onDecrementItem);
    on<RemoveItem>(_onRemoveItem);
    on<ClearCart>(_onClearCart);
  }

  void _onLoadCart(LoadCart event, Emitter<CartState> emit) {
    final items = cartBox.values
        .map((e) => e.copyWith()) // создаем новые объекты
        .toList();

    emit(CartState(items: items, totalPrice: _calculateTotal(items)));
  }

  void _onIncrementItem(IncrementItem event, Emitter<CartState> emit) async {
    final item = cartBox.values.firstWhere((e) => e.id == event.id);
    item.quantity += 1;
    await item.save();
    add(const CartEvent.loadCart());
  }

  void _onDecrementItem(DecrementItem event, Emitter<CartState> emit) async {
    final item = cartBox.values.firstWhere((e) => e.id == event.id);
    if (item.quantity > 1) {
      item.quantity -= 1;
      await item.save();
    } else {
      await item.delete();
    }
    add(const CartEvent.loadCart());
  }

  void _onRemoveItem(RemoveItem event, Emitter<CartState> emit) async {
    final item = cartBox.values.firstWhere((e) => e.id == event.id);
    await item.delete();
    add(const CartEvent.loadCart());
  }

  void _onClearCart(ClearCart event, Emitter<CartState> emit) async {
    await cartBox.clear();
    add(const CartEvent.loadCart());
  }

  int _calculateTotal(List<ProductDetailHiveModel> items) {
    return items.fold(
      0,
      (sum, item) => sum + ((item.price ?? 10) * item.quantity),
    );
  }
}
