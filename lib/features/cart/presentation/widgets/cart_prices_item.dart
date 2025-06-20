import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class CartPricesItem extends StatelessWidget {
  final String title;
  final int price;
  final bool generalPrice;
  const CartPricesItem(
      {super.key,
      required this.title,
      required this.price,
      required this.generalPrice});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyles.s16w400.copyWith(color: AppColors.black50),
        ),
        Text(
          '\$$price',
          style: generalPrice == true
              ? AppTextStyles.s16w700.copyWith(color: AppColors.black100)
              : AppTextStyles.s16w400.copyWith(color: AppColors.black100),
        ),
      ],
    );
  }
}
