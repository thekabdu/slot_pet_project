import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:flutter/material.dart';

class ProductInfoSection extends StatelessWidget {
  final String? title;
  final int? price;
  const ProductInfoSection(
      {super.key, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title ?? '', style: AppTextStyles.s16w700),
          15.height,
          Text(
            "\$$price",
            style: AppTextStyles.s16w700.copyWith(color: AppColors.primary100),
          ),
        ],
      ),
    );
  }
}
