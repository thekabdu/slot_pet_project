import 'package:hive/hive.dart';
part 'credit_card_model.g.dart';

@HiveType(typeId: 2)
class CreditCardModel extends HiveObject {
  @HiveField(0)
  final String number;

  @HiveField(1)
  final String expiry;

  @HiveField(2)
  final String cvv;

  CreditCardModel({
    required this.number,
    required this.expiry,
    required this.cvv,
  });

  String get maskedNumber => '**** **** **** ${number.substring(number.length - 4)}';

  CreditCardModel copyWith({
    String? number,
    String? expiry,
    String? cvv,
  }) {
    return CreditCardModel(
      number: number ?? this.number,
      expiry: expiry ?? this.expiry,
      cvv: cvv ?? this.cvv,
    );
  }
}
