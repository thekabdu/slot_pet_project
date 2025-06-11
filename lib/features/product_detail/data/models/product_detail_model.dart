import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail_model.freezed.dart';
part 'product_detail_model.g.dart';

@freezed
class ProductDetailModel with _$ProductDetailModel {
  const factory ProductDetailModel({
    required int id,
    String? title,
    String? image,
    int? price,
    String? brand,
    String? model,
    String? category,
    String? description,
    String? color,
    int? discount,
    bool? popular,
  }) = _ProductDetailModel;

  factory ProductDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailModelFromJson(json);
}