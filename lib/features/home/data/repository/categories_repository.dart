import 'package:clot/core/server/exception/failures.dart';
import 'package:dartz/dartz.dart';
import '../datasource/categories_remote_datasource.dart';
import '../models/categories_model.dart';

class CategoriesRepository {
  final CategoriesRemoteDataSource dataSource;

  CategoriesRepository(this.dataSource);

  Future<Either<Failure, CategoriesModel>> getCategories() async {
    try {
      final result = await dataSource.getCategories();
   
      return Right(result);
    } catch (e) {
      return const Left(ServerFailure());
    }
  }
}
