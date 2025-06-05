import 'package:flutter/material.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';

class OrderTimelineTile extends StatelessWidget {
  final String title;
  final String date;
  final bool isDone;

  const OrderTimelineTile({
    super.key,
    required this.title,
    required this.date,
    this.isDone = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = isDone ? AppColors.primary100 : AppColors.bglight2;
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        Icons.check_circle,
        color: color,
      ),
      title: Text(
        title,
        style: AppTextStyles.s14w500.copyWith(color: color),
      ),
      trailing: Text(
        date,
        style: AppTextStyles.s14w500.copyWith(color: color),
      ),
    );
  }
}
