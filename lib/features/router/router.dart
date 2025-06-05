import 'package:auto_route/auto_route.dart';
import 'package:clot/features/auth/presentation/sign_in/ui/sign_in_screen.dart';
import 'package:clot/features/home/presentation/screens/categories_screen.dart';
import 'package:clot/features/home/presentation/screens/home_screen.dart';
import 'package:clot/features/home/presentation/screens/product_detail_screen.dart';
import 'package:clot/features/home/presentation/screens/products_by_category_screen.dart';
import 'package:clot/features/notification/ui/notification_screen.dart';
import 'package:clot/features/order/data/models/order_model.dart';
import 'package:clot/features/order/presentation/screens/order_detail_screen.dart';
import 'package:clot/features/profile/presentation/screens/profile_screen.dart';
import 'package:clot/features/app_index_screen.dart';
import 'package:clot/features/order/presentation/screens/order_screen.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';
//flutter pub run build_runner build --delete-conflicting-outputs

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();
  @override
  List<AutoRoute> get routes => [
        // [Sign In]
        // AutoRoute(
        //   page: SignInRoute.page,
        //   path: '/',
        //   initial: true,
        // ),

        //[MAIN NAV BAR]
        AutoRoute(
          path: '/app',
          page: AppIndexRoute.page,
          initial: true,
          children: [
            AutoRoute(
              path: 'home',
              page: HomeRoute.page,
            ),
            AutoRoute(
              path: 'notification',
              page: NotificationRoute.page,
            ),
            AutoRoute(
              path: 'order',
              page: OrderRoute.page,
            ),
            AutoRoute(
              path: 'profile',
              page: ProfileRoute.page,
            ),
          ],
        ),
        AutoRoute(
          path: '/categories',
          page: CategoriesRoute.page,
        ),
        AutoRoute(
          path: '/categories',
          page: ProductsByCategoryRoute.page,
        ),
        AutoRoute(
          path: '/order-detail',
          page: OrderDetailRoute.page,
        ),
      ];
}
