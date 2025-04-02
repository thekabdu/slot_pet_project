import 'package:clot/features/profile/data/models/user_model.dart';
import 'package:dio/dio.dart';

class UserRemoteDataSource {
  final Dio dio;

  UserRemoteDataSource(this.dio);

  Future<UserModel> getUser() async {
    final response = await dio.get('https://fakestoreapi.in/api/users/7');
    return UserModel.fromJson(response.data['user']);
  }
}
