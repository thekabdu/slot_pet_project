import 'package:clot/core/theme/app_icons.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:flutter/material.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:flutter_svg/svg.dart';

class OrderSummaryTile extends StatelessWidget {
  final int itemCount;
  final VoidCallback? onViewAll;

  const OrderSummaryTile({
    super.key,
    required this.itemCount,
    this.onViewAll,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.bglight2,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          SvgPicture.asset(AppIcons.icRecepit),
          12.width,
          Text('$itemCount items', style: AppTextStyles.s16w500),
          const Spacer(),
          InkWell(
            onTap: onViewAll,
            child: Text(
              'View All',
              style:
                  AppTextStyles.s12w700.copyWith(color: AppColors.primary100),
            ),
          ),
        ],
      ),
    );
  }
}
