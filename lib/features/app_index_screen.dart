import 'package:auto_route/auto_route.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_icons.dart';
import 'package:clot/features/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class AppIndexScreen extends StatelessWidget {
  const AppIndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        NotificationRoute(),
        OrderRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          backgroundColor: AppColors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icHome),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icNotification),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icRecepit),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icProfile),
              label: '',
            ),
          ],
          iconSize: 24,
          currentIndex: tabsRouter.activeIndex,
          type: BottomNavigationBarType.fixed,
          onTap: tabsRouter.setActiveIndex,
        );
      },
    );
  }
}
