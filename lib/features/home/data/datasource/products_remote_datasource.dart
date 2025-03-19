import 'package:clot/features/home/data/models/products_model.dart';
import 'package:dio/dio.dart';

class ProductsRemoteDataSource {
  final Dio dio;

  ProductsRemoteDataSource(this.dio);

  Future<List<ProductsModel>> getProducts(int page, int limit) async {
    final response = await dio.get(
      'https://fakestoreapi.in/api/products',
      queryParameters: {
        'page': page,
        'limit': limit,
      },
    );
    final List<dynamic> productsJson = response.data["products"];

    return productsJson.map((json) => ProductsModel.fromJson(json)).toList();
  }
}
