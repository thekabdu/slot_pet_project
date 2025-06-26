import 'package:auto_route/auto_route.dart';
import 'package:clot/core/presentation/widgets/app_custom_button.dart';
import 'package:clot/core/presentation/widgets/app_textfield.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/auth/presentation/sign_in/bloc/sign_in_bloc.dart';
import 'package:clot/features/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SendPasswordWidget extends StatefulWidget {
  const SendPasswordWidget({super.key});

  @override
  State<SendPasswordWidget> createState() => _SendPasswordWidgetState();
}

class _SendPasswordWidgetState extends State<SendPasswordWidget> {
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppTextFieldWidget(
              label: "Password",
              autofocus: true,
              controller: _passwordController,
              onSubmitted: (value) => context.read<SignInBloc>().add(
                    SignInWithPassword(value),
                  ),
            ),
            16.height,
            AppCustomButton(
              onTap: () {
                context
                    .read<SignInBloc>()
                    .add(SignInWithPassword(_passwordController.text));
                context.router.replaceAll([const AppIndexRoute()]);
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
                style:
                    AppTextStyles.s13w500.copyWith(color: AppColors.black100),
                children: [
                  TextSpan(
                    text: 'Reset',
                    style: AppTextStyles.s13w700
                        .copyWith(color: AppColors.black100),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
