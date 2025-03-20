import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:flutter/material.dart';

class CategoriesItem extends StatelessWidget {
  final String title;
  const CategoriesItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            'assets/images/img_not_support.jpg',
            width: 56,
            height: 56,
            fit: BoxFit.cover,
          ),
        ),
        4.height,
        Text(
          title,
          style: AppTextStyles.s12w500,
        ),
      ],
    );
  }
}
