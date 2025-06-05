import 'package:auto_route/auto_route.dart';
import 'package:clot/core/presentation/app_bar/custom_app_bar.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/order/data/models/order_model.dart';
import 'package:clot/features/order/presentation/widgets/order_card.dart';
import 'package:clot/features/order/presentation/widgets/order_filter_item.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final List<String> statuses = [
    'Processing',
    'Shipped',
    'Delivered',
    'Returned',
    'Cancelled'
  ];

  String selectedStatus = 'Processing';

  final List<OrderModel> allOrders = [
    OrderModel(id: '#456765', items: 4, status: 'Processing'),
    OrderModel(id: '#454569', items: 2, status: 'Processing'),
    OrderModel(id: '#454809', items: 1, status: 'Processing'),
    // more fake orders
  ];

  @override
  Widget build(BuildContext context) {
    final filteredOrders =
        allOrders.where((order) => order.status == selectedStatus).toList();
    return Scaffold(
      appBar: const CustomAppBar(
        center: Text(
          'Orders',
          style: AppTextStyles.s16w700,
        ),
        leadingEmpty: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OrderStatusFilter(
            statuses: statuses,
            selected: selectedStatus,
            onSelected: (status) {
              setState(() => selectedStatus = status);
            },
          ),
          24.height,
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 24),
              itemCount: filteredOrders.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (_, index) =>
                  OrderCard(order: filteredOrders[index]),
            ),
          ),
        ],
      ),
    );
  }
}
