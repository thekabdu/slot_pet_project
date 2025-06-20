import 'package:hive/hive.dart';
part 'favorites_model.g.dart';

@HiveType(typeId: 3)
class FavoritesModel extends HiveObject {
  @HiveField(0)
  final int productId;

  FavoritesModel({
    required this.productId,
  });
}
