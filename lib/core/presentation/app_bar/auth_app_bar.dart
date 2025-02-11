import 'package:clot/core/presentation/widgets/wrapper_button.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AuthAppBar({super.key, this.leading});
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      titleSpacing: 0,
      centerTitle: true,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      automaticallyImplyLeading: false,
      shadowColor: AppColors.black100,
      leadingWidth: 100,
      leading: leading ??
          WrapperButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                    color: AppColors.bglight2),
                child: SvgPicture.asset(AppIcons.icArrowLeft),
              ),
            ),
          ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
