import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class ProfileSignOutButton extends StatelessWidget {
  const ProfileSignOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // TODO: Реализовать логику выхода
      },
      child: Text(
        'Sign Out',
        style: AppTextStyles.s16w700.copyWith(
          color: AppColors.red100,
        ),
      ),
    );
  }
}
