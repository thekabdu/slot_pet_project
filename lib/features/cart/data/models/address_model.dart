import 'package:hive/hive.dart';
part 'address_model.g.dart';

@HiveType(typeId: 1)
class AddressModel extends HiveObject {
  @HiveField(0)
  final String street;

  @HiveField(1)
  final String house;

  @HiveField(2)
  final String apartment;

  AddressModel({
    required this.street,
    required this.house,
    required this.apartment,
  });

  String get fullAddress => '$street, дом $house, кв. $apartment';

  AddressModel copyWith({
    String? street,
    String? house,
    String? apartment,
  }) {
    return AddressModel(
      street: street ?? this.street,
      house: house ?? this.house,
      apartment: apartment ?? this.apartment,
    );
  }
}