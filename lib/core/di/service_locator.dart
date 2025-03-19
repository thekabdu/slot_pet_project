import 'package:clot/features/home/data/datasource/categories_remote_datasource.dart';
import 'package:clot/features/home/data/datasource/products_remote_datasource.dart';
import 'package:clot/features/home/data/repository/categories_repository.dart';
import 'package:clot/features/home/data/repository/products_repository.dart';
import 'package:clot/features/home/presentation/bloc/categories_bloc/categories_bloc.dart';
import 'package:clot/features/home/presentation/bloc/products_bloc/products_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

final sl = GetIt.instance; // сокращенно service locator (sl)

void setupLocator() {
  // Регистрация Dio (HTTP клиент)
  sl.registerLazySingleton<Dio>(() => Dio());

  // Регистрация Remote Data Source
  sl.registerLazySingleton<ProductsRemoteDataSource>(
      () => ProductsRemoteDataSource(sl()));
  sl.registerLazySingleton<CategoriesRemoteDataSource>(
      () => CategoriesRemoteDataSource(sl()));

  // Регистрация Repository
  sl.registerLazySingleton<ProductsRepository>(() => ProductsRepository(sl()));
  sl.registerLazySingleton<CategoriesRepository>(
      () => CategoriesRepository(sl()));

  // Регистрация Bloc
  sl.registerFactory<ProductsBloc>(() => ProductsBloc(sl()));
  sl.registerFactory<CategoriesBloc>(() => CategoriesBloc(sl()));
}
