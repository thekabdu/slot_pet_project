import 'package:clot/features/home/data/models/categories_model.dart';
import 'package:clot/features/home/data/models/products_model.dart';
import 'package:dio/dio.dart';

class CategoriesRemoteDataSource {
  final Dio dio;

  CategoriesRemoteDataSource(this.dio);

  Future<CategoriesModel> getCategories() async {
    final response = await dio.get(
      'https://fakestoreapi.in/api/products/category',
    );
    return CategoriesModel.fromJson(response.data);
  }

  Future<List<ProductsModel>> getProductsByCategory(
      Map<String, dynamic>? param) async {
    final response = await dio.get(
      'https://fakestoreapi.in/api/products/category',
      queryParameters: param,
    );
    final List<dynamic> productsJson = response.data["products"];

    return productsJson.map((json) => ProductsModel.fromJson(json)).toList();
  }
}
