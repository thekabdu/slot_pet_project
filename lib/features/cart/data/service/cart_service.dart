import 'package:clot/features/product_detail/data/models/product_detail_hive_model.dart';
import 'package:clot/features/product_detail/data/models/product_detail_model.dart';
import 'package:hive/hive.dart';

class CartService {
  final Box<ProductDetailHiveModel> cartBox =
      Hive.box<ProductDetailHiveModel>('cart');

  List<ProductDetailModel> getAllProducts() {
    return cartBox.values.map((e) => e.toFreezedModel()).toList();
  }

  void addToCart(ProductDetailModel product) {
    if (!cartBox.values.any((item) => item.id == product.id)) {
      cartBox.add(ProductDetailHiveModel.fromFreezedModel(product));
    }
  }

  void removeFromCart(int productId) {
    final key = cartBox.keys.firstWhere(
      (k) => cartBox.get(k)?.id == productId,
      orElse: () => null,
    );
    if (key != null) {
      cartBox.delete(key);
    }
  }

  void clearCart() {
    cartBox.clear();
  }

  bool isInCart(int productId) {
    return cartBox.values.any((item) => item.id == productId);
  }
}
