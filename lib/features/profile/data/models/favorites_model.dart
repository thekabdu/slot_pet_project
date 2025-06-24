import 'package:clot/features/home/data/models/products_model.dart';
import 'package:hive/hive.dart';
part 'favorites_model.g.dart';

@HiveType(typeId: 3)
class FavoritesModel extends HiveObject {
  @HiveField(0)
  final int productId;

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

  @HiveField(12)
  int? size;

  FavoritesModel({
    required this.productId,
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
    this.size,
  });



  factory FavoritesModel.fromFreezedModel(ProductsModel model) {
  return FavoritesModel(
    productId: model.id,
    title: model.title,
    image: model.image,
    price: model.price,
    category: model.category,
    description: model.description,
    color: model.color,
    popular: model.popular,
  );
}


  /// Преобразование в Freezed-модель
  ProductsModel toFreezedModel() {
    return ProductsModel(
      id: productId,
      title: title ?? '',
      image: image,
      price: price,
      category: category,
      description: description ?? '',
      color: color,
      popular: popular,
    );
  }
}
