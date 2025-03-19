import 'package:dio/dio.dart';

class ApiService {
  ApiService(this._dioClient);

  final Future<Dio> _dioClient;

  /// категорий
  Future<Response> getCategory() async {
    final client = await _dioClient;
    return client.get<dynamic>('/api/products/category');
  }
}
