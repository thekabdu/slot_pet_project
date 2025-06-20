import 'package:auto_route/auto_route.dart';
import 'package:clot/core/presentation/widgets/app_custom_button.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SuccessOrderPlacedScreen extends StatelessWidget {
  const SuccessOrderPlacedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: AppColors.primary100,
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: Image.asset(
                  'assets/images/img_success_order.png',
                  width: 316,
                  height: 252,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Order Placed Successfully',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.s32w700.copyWith(
                        color: AppColors.black100,
                      ),
                    ),
                    25.height,
                    Text(
                      'You will recieve an email confirmation',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.s16w400.copyWith(
                        color: AppColors.black50,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Expanded(
                          child: AppCustomButton(
                            onTap: () => context.router.popUntilRoot(),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            borderRadiusRadii: 100,
                            child: Text(
                              'See Order details',
                              style: AppTextStyles.s16w400.copyWith(
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
