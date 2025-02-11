import 'package:auto_route/auto_route.dart';
import 'package:clot/core/presentation/widgets/app_custom_button.dart';
import 'package:clot/core/presentation/widgets/app_textfield.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/router/router.dart';
import 'package:flutter/material.dart';

class SendPhoneWidget extends StatefulWidget {
  const SendPhoneWidget({super.key});

  @override
  State<SendPhoneWidget> createState() => _SendPhoneWidgetState();
}

class _SendPhoneWidgetState extends State<SendPhoneWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const AppTextFieldWidget(
          label: "Password",
          autofocus: true,
        ),
        16.height,
        AppCustomButton(
          onTap: () {
            context.replaceRoute(
              const AppIndexRoute(),
            );
          },
          borderRadiusRadii: 100,
          child: Text(
            'Continue',
            style: AppTextStyles.s16w500.copyWith(color: AppColors.white),
          ),
        ),
        16.height,
        RichText(
          text: TextSpan(
            text: 'Forgot Password ? ',
            style: AppTextStyles.s13w500.copyWith(color: AppColors.black100),
            children: [
              TextSpan(
                text: 'Reset',
                style:
                    AppTextStyles.s13w700.copyWith(color: AppColors.black100),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
