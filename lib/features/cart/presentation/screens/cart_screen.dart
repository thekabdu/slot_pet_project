import 'package:auto_route/auto_route.dart';
import 'package:clot/core/presentation/app_bar/custom_app_bar.dart';
import 'package:clot/core/presentation/widgets/app_custom_button.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:clot/features/cart/presentation/widgets/cart_all_prices_widget.dart';
import 'package:clot/features/cart/presentation/widgets/cart_item.dart';
import 'package:clot/features/cart/presentation/widgets/empty_cart_widget.dart';
import 'package:clot/features/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CartBloc>().add(const CartEvent.loadCart());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        center: Text(
          'Cart',
          style: AppTextStyles.s16w700,
        ),
      ),
      body: BlocConsumer<CartBloc, CartState>(
        listener: (BuildContext context, CartState state) {},
        builder: (context, state) {
          if (state.items.isEmpty) {
            return const EmptyCartWidget();
          }
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: InkWell(
                    onTap: () => context
                        .read<CartBloc>()
                        .add(const CartEvent.clearCart()),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Remove All',
                          style: AppTextStyles.s16w400,
                        ),
                      ],
                    ),
                  ),
                ),
                16.height,
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => CartItem(
                    productId: state.items[index].id,
                  ),
                  separatorBuilder: (context, index) => 8.height,
                  itemCount: state.items.length,
                ),
                26.height,
                CartAllPricesWidget(
                  totalPrice: state.totalPrice,
                ),
                26.height,
                AppCustomButton(
                  onTap: () => context.router.push(const CheckoutRoute()),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  borderRadiusRadii: 100,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    'Checkout',
                    style:
                        AppTextStyles.s16w500.copyWith(color: AppColors.white),
                  ),
                ),
                26.height,
              ],
            ),
          );
        },
      ),
    );
  }
}
