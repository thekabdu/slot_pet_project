import 'package:clot/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileAvatarWidget extends StatelessWidget {
  const ProfileAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 80,
      child: CircleAvatar(
        backgroundColor: AppColors.primary100,
        radius: 100,
        backgroundImage: NetworkImage(
          "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?q=80&w=3307&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        ),
      ),
    );
  }
}
