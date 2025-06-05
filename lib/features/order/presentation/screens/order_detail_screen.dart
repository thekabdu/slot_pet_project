import 'package:auto_route/auto_route.dart';
import 'package:clot/core/presentation/app_bar/custom_app_bar.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/order/data/models/order_model.dart';
import 'package:clot/features/order/presentation/widgets/order_summary_item.dart';
import 'package:clot/features/order/presentation/widgets/order_timeline_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OrderDetailScreen extends StatefulWidget {
  final OrderModel order;
  const OrderDetailScreen({super.key, required this.order});

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  final statusSteps = [
    'Delivered',
    'Shipped',
    'Order Confirmed',
    'Order Placed',
  ];

  final activeStatus = 'Shipped';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        center: Text(
          'Order  #456765',
          style: AppTextStyles.s16w700,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text('Order  #456765', style: AppTextStyles.s14w700),
            16.height,
            ...statusSteps.map(
              (step) => OrderTimelineTile(
                title: step,
                date: '28 May',
                isDone: statusSteps.indexOf(step) <=
                    statusSteps.indexOf(activeStatus),
              ),
            ),
            40.height,
            const Text('Order Items', style: AppTextStyles.s16w700),
            16.height,
            const OrderSummaryTile(
              itemCount: 4,
              onViewAll: null, // TODO: добавить действие
            ),
            40.height,
            const Text('Shipping details', style: AppTextStyles.s16w700),
            16.height,
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.bglight2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('2715 Ash Dr. San Jose, South Dakota 83475',
                      style: AppTextStyles.s12w400),
                  4.height,
                  const Text('121-224-7890', style: AppTextStyles.s12w400),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
