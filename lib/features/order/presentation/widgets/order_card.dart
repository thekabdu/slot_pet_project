import 'package:auto_route/auto_route.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_icons.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/features/order/data/models/order_model.dart';
import 'package:clot/features/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderCard extends StatelessWidget {
  final OrderModel order;

  const OrderCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.push(OrderDetailRoute(order: order)),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.bglight2,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            SvgPicture.asset(AppIcons.icRecepit),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Order ${order.id}', style: AppTextStyles.s16w500),
                  Text(
                    '${order.items} items',
                    style: AppTextStyles.s12w400
                        .copyWith(color: AppColors.black50),
                  ),
                ],
              ),
            ),
            SvgPicture.asset(AppIcons.icArrowRight),
          ],
        ),
      ),
    );
  }
}
