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

  @HiveField(11)
  int quantity;

  @HiveField(12)
  int? size;

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
    this.quantity = 1,
    this.size,
  });

  // Преобразование из Freezed-модели
   factory ProductDetailHiveModel.fromFreezedModel(ProductDetailModel model) {
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

  /// Преобразование в Freezed-модель
  ProductDetailModel toFreezedModel() {
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

  // Обратно в Freezed-модель
  ProductDetailHiveModel copyWith({
    int? id,
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
    int? quantity,
    int? size,
  }) {
    return ProductDetailHiveModel(
      id: id ?? this.id,
      title: title ?? this.title,
      image: image ?? this.image,
      price: price ?? this.price,
      brand: brand ?? this.brand,
      model: model ?? this.model,
      category: category ?? this.category,
      description: description ?? this.description,
      color: color ?? this.color,
      discount: discount ?? this.discount,
      popular: popular ?? this.popular,
      quantity: quantity ?? this.quantity,
      size: size ?? this.size,
    );
  }
}
