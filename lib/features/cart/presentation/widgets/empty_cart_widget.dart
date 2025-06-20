import 'package:auto_route/auto_route.dart';
import 'package:clot/core/presentation/widgets/app_custom_button.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/router/router.dart';
import 'package:flutter/material.dart';

class EmptyCartWidget extends StatelessWidget {
  const EmptyCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/img_parcel.png',
            width: 100,
          ),
          26.height,
          const Text(
            'Your Cart is Empty',
            style: AppTextStyles.s24w500,
          ),
          26.height,
          AppCustomButton(
            onTap: () => context.router.push(const CategoriesRoute()),
            borderRadiusRadii: 100,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Text(
              'Explore Categories',
              style: AppTextStyles.s16w600.copyWith(
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
