import 'package:auto_route/auto_route.dart';
import 'package:clot/features/auth/presentation/sign_in/ui/sign_in_screen.dart';
import 'package:clot/features/home/presentation/screens/categories_screen.dart';
import 'package:clot/features/home/presentation/screens/home_screen.dart';
import 'package:clot/features/home/presentation/screens/product_detail_screen.dart';
import 'package:clot/features/notification/ui/notification_screen.dart';
import 'package:clot/features/profile/ui/profile_screen.dart';
import 'package:clot/features/recepit/recepit_screen.dart';
import 'package:clot/features/app_index_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();
  @override
  List<AutoRoute> get routes => [
        //[Sign In]
        // AutoRoute(
        //   page: SignInRoute.page,
        //   path: '/',
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
              path: 'recepit',
              page: RecepitRoute.page,
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
      ];
}
