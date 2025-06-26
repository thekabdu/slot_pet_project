import 'package:clot/features/auth/data/auth_service.dart';
import 'package:clot/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:clot/features/cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:clot/features/home/data/datasource/categories_remote_datasource.dart';
import 'package:clot/features/home/data/datasource/products_remote_datasource.dart';
import 'package:clot/features/home/data/repository/categories_repository.dart';
import 'package:clot/features/home/data/repository/products_repository.dart';
import 'package:clot/features/home/presentation/bloc/categories_bloc/categories_bloc.dart';
import 'package:clot/features/home/presentation/bloc/products_bloc/products_bloc.dart';
import 'package:clot/features/home/presentation/bloc/products_by_categories_bloc/products_by_categories_bloc.dart';
import 'package:clot/features/product_detail/data/datasource/product_detail_remote_datasource.dart';
import 'package:clot/features/product_detail/data/models/product_detail_hive_model.dart';
import 'package:clot/features/product_detail/data/repository/product_detail_repository.dart';
import 'package:clot/features/cart/data/service/cart_service.dart';
import 'package:clot/features/product_detail/presentation/bloc/product_detail_bloc.dart';
import 'package:clot/features/profile/data/datasource/user_remote_datasource.dart';
import 'package:clot/features/profile/data/models/favorites_model.dart';
import 'package:clot/features/profile/data/repository/user_repository.dart';
import 'package:clot/features/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:clot/features/profile/presentation/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';

final sl = GetIt.instance; // сокращенно service locator (sl)

void setupLocator(Box<ProductDetailHiveModel> cartBox) {
  // Регистрация Dio (HTTP клиент)
  sl.registerLazySingleton<Dio>(() => Dio());

  // Регистрация Remote Data Source
  sl.registerLazySingleton<ProductsRemoteDataSource>(
      () => ProductsRemoteDataSource(sl()));
  sl.registerLazySingleton<CategoriesRemoteDataSource>(
      () => CategoriesRemoteDataSource(sl()));
  sl.registerLazySingleton<UserRemoteDataSource>(
      () => UserRemoteDataSource(sl()));
  sl.registerLazySingleton<ProductDetailRemoteDataSource>(
      () => ProductDetailRemoteDataSource(sl()));

  // Регистрация Repository

  sl.registerLazySingleton<ProductsRepository>(() => ProductsRepository(sl()));
  sl.registerLazySingleton<CategoriesRepository>(
      () => CategoriesRepository(sl()));
  sl.registerLazySingleton<UserRepository>(() => UserRepository(sl()));
  sl.registerLazySingleton<ProductDetailRepository>(
      () => ProductDetailRepository(sl()));
  sl.registerLazySingleton(
      () => CartBloc(Hive.box<ProductDetailHiveModel>('cart')));
  sl.registerLazySingleton(
      () => WishlistBloc(Hive.box<FavoritesModel>('favoritesBox')));

  // Регистрация Bloc

  sl.registerFactory<ProductsBloc>(() => ProductsBloc(sl()));
  sl.registerFactory<CategoriesBloc>(() => CategoriesBloc(sl()));
  sl.registerFactory<ProductsByCategoriesBloc>(
      () => ProductsByCategoriesBloc(sl()));
  sl.registerFactory<ProductDetailBloc>(() => ProductDetailBloc(sl()));

  sl.registerFactory<UserBloc>(() => UserBloc(sl()));

  // CartService
  sl.registerLazySingleton<CartService>(() => CartService());
  sl.registerLazySingleton<AuthService>(() => AuthServiceImpl());
  sl.registerLazySingleton<AuthBloc>(() => AuthBloc(sl<AuthService>()));
}
