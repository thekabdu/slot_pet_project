import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_icons.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileMenuItem extends StatelessWidget {
  final String title;
  final Function onTap;

  const ProfileMenuItem({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      child: InkWell(
        onTap: () => onTap(),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.bglight2,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: AppTextStyles.s16w400),
              SvgPicture.asset(AppIcons.icArrowRight)
            ],
          ),
        ),
      ),
    );
  }
}
