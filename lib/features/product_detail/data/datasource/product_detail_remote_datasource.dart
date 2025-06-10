import 'package:clot/features/product_detail/data/models/product_detail_model.dart';
import 'package:dio/dio.dart';

class ProductDetailRemoteDataSource {
  final Dio dio;

  ProductDetailRemoteDataSource(this.dio);

  Future<ProductDetailModel> getProductDetail(int id) async {
    final response = await dio.get(
      'https://fakestoreapi.in/api/products/$id',
    );
    return ProductDetailModel.fromJson(response.data['product']);
  }
}
