import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:flutter/material.dart';

class ProductInfoSection extends StatelessWidget {
  const ProductInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Men's Harrington Jacket", style: AppTextStyles.s16w700),
          15.height,
          Text(
            "\$148",
            style: AppTextStyles.s16w700.copyWith(color: AppColors.primary100),
          ),
        ],
      ),
    );
  }
}
