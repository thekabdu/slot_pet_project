import 'package:clot/features/home/data/models/categories_model.dart';
import 'package:dio/dio.dart';

class CategoriesRemoteDataSource {
  final Dio dio;

  CategoriesRemoteDataSource(this.dio);

  Future<CategoriesModel> getCategories() async {
    final response = await dio.get('https://fakestoreapi.in/api/products/category');
    return CategoriesModel.fromJson(response.data);
  }
}
