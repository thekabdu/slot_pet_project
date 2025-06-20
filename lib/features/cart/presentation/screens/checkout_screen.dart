import 'package:auto_route/auto_route.dart';
import 'package:clot/core/presentation/app_bar/custom_app_bar.dart';
import 'package:clot/core/presentation/widgets/app_custom_button.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/cart/presentation/bloc/checkout_bloc/checkout_bloc.dart';
import 'package:clot/features/cart/presentation/widgets/address_bottom_sheet.dart';
import 'package:clot/features/cart/presentation/widgets/card_bottom_sheet.dart';
import 'package:clot/features/cart/presentation/widgets/cart_all_prices_widget.dart';
import 'package:clot/features/cart/presentation/widgets/checkout_item_widget.dart';
import 'package:clot/features/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CheckoutBloc()..add(const CheckoutEvent.loadData()),
      child: const CheckoutView(),
    );
  }
}

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        center: Text(
          'Checkout',
          style: AppTextStyles.s16w700,
        ),
      ),
      body: BlocBuilder<CheckoutBloc, CheckoutState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              24.height,
              CheckoutItemWidget(
                title: 'Shipping Address',
                description: state.address?.fullAddress ?? 'Add address',
                onTap: () async {
                  final address = await showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: AppColors.white,
                    builder: (_) => const AddressBottomSheet(),
                  );
                  if (address != null) {
                    context.read<CheckoutBloc>().add(
                          CheckoutEvent.updateAddress(address),
                        );
                  }
                },
              ),
              16.height,
              CheckoutItemWidget(
                title: 'Payment Card',
                description: state.card?.maskedNumber ?? 'Add card',
                onTap: () async {
                  final card = await showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: AppColors.white,
                    builder: (_) => const CardBottomSheet(),
                  );
                  if (card != null) {
                    context.read<CheckoutBloc>().add(
                          CheckoutEvent.updateCard(card),
                        );
                  }
                },
              ),
              const Spacer(),
              const CartAllPricesWidget(
                totalPrice: 2333,
              ),
              26.height,
              AppCustomButton(
                onTap: () =>
                    context.router.push(const SuccessOrderPlacedRoute()),
                margin: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                borderRadiusRadii: 100,
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'prise',
                      style: AppTextStyles.s17w600
                          .copyWith(color: AppColors.white),
                    ),
                    Text(
                      'Place Order',
                      style: AppTextStyles.s16w400
                          .copyWith(color: AppColors.white),
                    ),
                  ],
                ),
              ),
              24.height,
            ],
          );
        },
      ),
    );
  }
}
