import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:flutter/material.dart';

class OrderStatusFilter extends StatelessWidget {
  final List<String> statuses;
  final String selected;
  final void Function(String) onSelected;

  const OrderStatusFilter({
    super.key,
    required this.statuses,
    required this.selected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: statuses.length,
        separatorBuilder: (_, __) => 8.width,
        padding: const EdgeInsets.only(left: 24, right: 24),
        itemBuilder: (_, index) {
          final status = statuses[index];
          final isSelected = status == selected;
          return InkWell(
            onTap: () => onSelected(status),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary100 : AppColors.bglight2,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                status,
                style: TextStyle(
                  color: isSelected ? AppColors.white : AppColors.black100,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
