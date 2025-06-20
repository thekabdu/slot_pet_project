part of 'checkout_bloc.dart';

@freezed
class CheckoutState with _$CheckoutState {
  const factory CheckoutState({
    AddressModel? address,
    CreditCardModel? card,
    @Default(0) int subtotal,
  }) = _CheckoutState;
}
