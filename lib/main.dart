import 'package:clot/core/di/service_locator.dart';
import 'package:clot/features/multi_providers.dart';
import 'package:clot/features/product_detail/data/models/product_detail_hive_model.dart';
import 'package:clot/features/profile/data/models/favorites_model.dart';
import 'package:clot/features/router/router.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ProductDetailHiveModelAdapter());
  final box = await Hive.openBox<ProductDetailHiveModel>('cart');
  Hive.registerAdapter(FavoritesModelAdapter());
  await Hive.openBox<FavoritesModel>('favoritesBox');
  await Hive.openBox('auth');
  setupLocator(box);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProviders(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Circular Std',
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.white,
        ),
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
