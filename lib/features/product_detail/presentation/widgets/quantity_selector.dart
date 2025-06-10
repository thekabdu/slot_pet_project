import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:flutter/material.dart';

class QuantitySelector extends StatelessWidget {
  const QuantitySelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.bglight2,
        borderRadius: BorderRadius.circular(100),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Row(
        children: [
          const Text(
            'Quantity',
            style: AppTextStyles.s16w400,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.remove_circle,
              color: AppColors.primary100,
              size: 40,
            ),
          ),
          10.width,
          const Text(
            '1',
            style: AppTextStyles.s16w400,
          ),
          10.width,
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_circle,
              color: AppColors.primary100,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
