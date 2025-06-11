import 'package:clot/features/product_detail/data/models/product_detail_hive_model.dart';
import 'package:clot/features/product_detail/data/models/product_detail_model.dart';
import 'package:hive/hive.dart';

class CartService {
  static const String _boxName = 'cartBox';

  final Box<ProductDetailHiveModel> _cartBox;

  CartService(this._cartBox);

  List<ProductDetailHiveModel> get items => _cartBox.values.toList();

  Future<void> add(ProductDetailModel product) async {
    final hiveModel = ProductDetailHiveModel.fromFreezed(product);
    if (!_cartBox.values.any((item) => item.id == hiveModel.id)) {
      await _cartBox.add(hiveModel);
    }
  }

  Future<void> remove(int productId) async {
    final keyToRemove = _cartBox.keys.firstWhere(
      (key) => _cartBox.get(key)?.id == productId,
      orElse: () => null,
    );
    if (keyToRemove != null) {
      await _cartBox.delete(keyToRemove);
    }
  }

  Future<void> clear() async {
    await _cartBox.clear();
  }

  // List<ProductDetailModel> get items =>
  //   _cartBox.values.map((e) => e.toFreezed()).toList();
}
