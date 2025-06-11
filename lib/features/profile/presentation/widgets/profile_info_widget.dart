import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/profile/data/models/user_model.dart';
import 'package:flutter/material.dart';

class ProfileInfoWidget extends StatelessWidget {
  final UserModel userModel;
  const ProfileInfoWidget({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.bglight2,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            userModel.username,
            style: AppTextStyles.s16w700,
          ),
          8.height,
          Text(
            userModel.email,
            style: AppTextStyles.s16w700.copyWith(color: AppColors.black50),
          ),
        ],
      ),
    );
  }
}
