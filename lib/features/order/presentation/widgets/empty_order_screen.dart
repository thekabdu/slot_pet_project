import 'package:clot/core/presentation/app_bar/custom_app_bar.dart';
import 'package:clot/core/presentation/widgets/app_custom_button.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:flutter/material.dart';

class EmptyOrderScreen extends StatelessWidget {
  const EmptyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        center: Text('Orders'),
        leading: SizedBox.shrink(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/check_out.png',
              fit: BoxFit.cover,
              width: 100,
              height: 100,
            ),
            24.height,
            const Text('No Orders yet', style: AppTextStyles.s24w500),
            24.height,
            AppCustomButton(
              width: 185,
              color: AppColors.primary100,
              borderRadiusRadii: 100,
              padding: const EdgeInsets.symmetric(vertical: 12),
              onTap: () {},
              child: Text(
                'Explore Categories',
                style: AppTextStyles.s16w500.copyWith(color: AppColors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
