import 'package:clot/core/server/exception/failures.dart';
import 'package:clot/features/home/data/datasource/products_remote_datasource.dart';
import 'package:clot/features/home/data/models/products_model.dart';
import 'package:dartz/dartz.dart';

class ProductsRepository {
  final ProductsRemoteDataSource remoteDataSource;

  ProductsRepository(this.remoteDataSource);

  Future<Either<Failure, List<ProductsModel>>> getProducts(
      int page, int limit) async {
    try {
      final products = await remoteDataSource.getProducts(page, limit);
      return Right(products);
    } catch (e) {
      return const Left(ServerFailure());
    }
  }
}
