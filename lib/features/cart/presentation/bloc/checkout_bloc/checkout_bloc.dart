import 'package:bloc/bloc.dart';
import 'package:clot/features/cart/data/models/address_model.dart';
import 'package:clot/features/cart/data/models/credit_card_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc() : super(const CheckoutState()) {
    on<LoadData>(_onLoadData);
    on<UpdateAddress>(_onUpdateAddress);
    on<UpdateCard>(_onUpdateCard);
  }

  void _onLoadData(LoadData event, Emitter<CheckoutState> emit) async {
    final addressBox = await Hive.openBox<AddressModel>('addressBox');
    final cardBox = await Hive.openBox<CreditCardModel>('cardBox');

    final address = addressBox.get('main');
    final card = cardBox.get('main');

    emit(state.copyWith(
      address: address,
      card: card,
      subtotal: 3456, // example value
    ));
  }

  void _onUpdateAddress(
      UpdateAddress event, Emitter<CheckoutState> emit) async {
    final box = await Hive.openBox<AddressModel>('addressBox');
    await box.put('main', event.address);
    emit(state.copyWith(address: event.address));
  }

  void _onUpdateCard(UpdateCard event, Emitter<CheckoutState> emit) async {
    final box = await Hive.openBox<CreditCardModel>('cardBox');
    await box.put('main', event.card);
    emit(state.copyWith(card: event.card));
  }
}
