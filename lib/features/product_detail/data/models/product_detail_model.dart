import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail_model.freezed.dart';
part 'product_detail_model.g.dart';

@freezed
class ProductDetailModel with _$ProductDetailModel {
  const factory ProductDetailModel({
    required int id,
    required String image,
    required int price,
    required String brand,
    required String model,
    // required Color color,
    required String category,
    required String description,
    // required String color,
    int? discount,
    bool? popular,
  }) = _ProductDetailModel;

  factory ProductDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailModelFromJson(json);
}
