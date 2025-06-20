import 'package:clot/features/cart/presentation/widgets/cart_prices_item.dart';
import 'package:flutter/material.dart';

class CartAllPricesWidget extends StatelessWidget {
  final int totalPrice;
  const CartAllPricesWidget({super.key, required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          CartPricesItem(
              title: 'Subtotal', price: totalPrice, generalPrice: false),
          const CartPricesItem(
              title: 'Shipping Cost', price: 12, generalPrice: false),
          const CartPricesItem(title: 'Tax', price: 0, generalPrice: false),
          CartPricesItem(title: 'Total', price: totalPrice, generalPrice: true),
        ],
      ),
    );
  }
}
