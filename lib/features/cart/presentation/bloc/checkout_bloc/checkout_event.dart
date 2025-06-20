part of 'checkout_bloc.dart';

@freezed
class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.started() = _Started;
  const factory CheckoutEvent.loadData() = LoadData;
  const factory CheckoutEvent.updateAddress(AddressModel address) = UpdateAddress;
  const factory CheckoutEvent.updateCard(CreditCardModel card) = UpdateCard;
}