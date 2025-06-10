import 'package:clot/core/server/exception/failures.dart';
import 'package:clot/features/product_detail/data/datasource/product_detail_remote_datasource.dart';
import 'package:clot/features/product_detail/data/models/product_detail_model.dart';
import 'package:dartz/dartz.dart';

class ProductDetailRepository {
  final ProductDetailRemoteDataSource remoteDataSource;

  ProductDetailRepository(this.remoteDataSource);

  Future<Either<Failure, ProductDetailModel>> getProductDetail(int id) async {
    try {
      final products = await remoteDataSource.getProductDetail(id);
      return Right(products);
    } catch (e) {
      return const Left(ServerFailure());
    }
  }
}
