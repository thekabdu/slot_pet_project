import 'package:clot/core/server/exception/failures.dart';
import 'package:clot/features/home/data/models/products_model.dart';
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

  Future<Either<Failure, List<ProductsModel>>> getProductsByCategory(
      String type) async {
    try {
      final query = {
        "type": type,
      };
      final result = await dataSource.getProductsByCategory(query);
      return Right(result);
    } catch (e) {
      return const Left(ServerFailure());
    }
  }
}
