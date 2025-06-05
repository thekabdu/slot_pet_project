import 'package:auto_route/auto_route.dart';
import 'package:clot/core/presentation/widgets/wrapper_button.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_icons.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.leading,
      this.action,
      this.center,
      this.leadingEmpty = false});

  final Widget? leading;
  final Widget? action;
  final Widget? center;
  final bool? leadingEmpty;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      automaticallyImplyLeading: false,
      shadowColor: AppColors.black100,
      titleSpacing: 0,
      leadingWidth: leadingEmpty == false ? 100 : 0,
      leading: leadingEmpty == false
          ? Padding(
              padding: const EdgeInsets.only(left: 16),
              child: leading ?? _buildButton(context),
            )
          : const SizedBox.shrink(),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          12.width,
          40.width,
          Expanded(
            child: Center(child: center ?? const SizedBox.shrink()), // Центр
          ),
          40.width,
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: action ?? const SizedBox.shrink(),
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context) {
    return WrapperButton(
      onPressed: () => context.router.maybePop(),
      child: Container(
        width: 40,
        height: 40,
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          color: AppColors.bglight2,
        ),
        child: SvgPicture.asset(AppIcons.icArrowLeft),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
