import 'package:clot/core/presentation/widgets/app_custom_button.dart';
import 'package:clot/core/presentation/widgets/app_textfield.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_icons.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/auth/presentation/sign_in/bloc/sign_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SendEmailWidget extends StatefulWidget {
  final String? errorMessage;
  const SendEmailWidget({super.key, this.errorMessage});

  @override
  State<SendEmailWidget> createState() => _SendEmailWidgetState();
}

class _SendEmailWidgetState extends State<SendEmailWidget> {
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppTextFieldWidget(
          label: "Email Address",
          controller: _emailController,
          errorMessage: widget.errorMessage,
          onSubmitted: (value) {
            context.read<SignInBloc>().add(ValidateEmail(value));
          },
        ),
        16.height,
        AppCustomButton(
          onTap: () => context.read<SignInBloc>().add(
                ValidateEmail(_emailController.text),
              ),
          borderRadiusRadii: 100,
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Text(
            'Continue',
            style: AppTextStyles.s16w500.copyWith(color: AppColors.white),
          ),
        ),
        16.height,
        RichText(
          text: TextSpan(
            text: 'Dont have an Account ? ',
            style: AppTextStyles.s13w500.copyWith(color: AppColors.black100),
            children: [
              TextSpan(
                text: 'Create One',
                style:
                    AppTextStyles.s13w700.copyWith(color: AppColors.black100),
              ),
            ],
          ),
        ),
        70.height,
        AppCustomButton(
          onTap: () {},
          borderRadiusRadii: 100,
          color: AppColors.bglight2,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(AppIcons.icApple),
              Text(
                'Continue With Apple',
                style:
                    AppTextStyles.s16w500.copyWith(color: AppColors.black100),
              ),
              16.width,
            ],
          ),
        ),
        12.height,
        AppCustomButton(
          onTap: () {},
          borderRadiusRadii: 100,
          color: AppColors.bglight2,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(AppIcons.icApple),
              Text(
                'Continue With Google',
                style:
                    AppTextStyles.s16w500.copyWith(color: AppColors.black100),
              ),
              16.width,
            ],
          ),
        ),
        12.height,
        AppCustomButton(
          onTap: () {},
          borderRadiusRadii: 100,
          color: AppColors.bglight2,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(AppIcons.icApple),
              Text(
                'Continue With Facebook',
                style:
                    AppTextStyles.s16w500.copyWith(color: AppColors.black100),
              ),
              16.width,
            ],
          ),
        ),
      ],
    );
  }
}
