import 'package:clot/features/product_detail/data/models/product_detail_model.dart';
import 'package:hive/hive.dart';

part 'product_detail_hive_model.g.dart';

@HiveType(typeId: 0)
class ProductDetailHiveModel extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String? title;

  @HiveField(2)
  String? image;

  @HiveField(3)
  int? price;

  @HiveField(4)
  String? brand;

  @HiveField(5)
  String? model;

  @HiveField(6)
  String? category;

  @HiveField(7)
  String? description;

  @HiveField(8)
  String? color;

  @HiveField(9)
  int? discount;

  @HiveField(10)
  bool? popular;

  ProductDetailHiveModel({
    required this.id,
    this.title,
    this.image,
    this.price,
    this.brand,
    this.model,
    this.category,
    this.description,
    this.color,
    this.discount,
    this.popular,
  });

  // Преобразование из Freezed-модели
  factory ProductDetailHiveModel.fromFreezed(ProductDetailModel model) {
    return ProductDetailHiveModel(
      id: model.id,
      title: model.title,
      image: model.image,
      price: model.price,
      brand: model.brand,
      model: model.model,
      category: model.category,
      description: model.description,
      color: model.color,
      discount: model.discount,
      popular: model.popular,
    );
  }

  // Обратно в Freezed-модель
  ProductDetailModel toFreezed() {
    return ProductDetailModel(
      id: id,
      title: title,
      image: image,
      price: price,
      brand: brand,
      model: model,
      category: category,
      description: description,
      color: color,
      discount: discount,
      popular: popular,
    );
  }
}
