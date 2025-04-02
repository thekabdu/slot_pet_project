import 'package:clot/core/server/exception/failures.dart';
import 'package:clot/features/profile/data/datasource/user_remote_datasource.dart';
import 'package:clot/features/profile/data/models/user_model.dart';
import 'package:dartz/dartz.dart';

class UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepository(this.remoteDataSource);

  Future<Either<Failure, UserModel>> getUser() async {
    try {
      final user = await remoteDataSource.getUser();
      return Right(user);
    } catch (e) {
      return const Left(ServerFailure());
    }
  }
}
