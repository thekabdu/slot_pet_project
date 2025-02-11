import 'package:auto_route/auto_route.dart';
import 'package:clot/core/presentation/app_bar/auth_app_bar.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/auth/presentation/sign_in/bloc/sign_in_bloc.dart';
import 'package:clot/features/auth/presentation/sign_in/ui/widgets/send_email_widget.dart';
import 'package:clot/features/auth/presentation/sign_in/ui/widgets/send_phone_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignInBloc(),
      child: BlocBuilder<SignInBloc, SignInState>(
        builder: (context, state) {
          return Scaffold(
            appBar: const AuthAppBar(
              leading: SizedBox.shrink(),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sign in',
                    style: AppTextStyles.s32w700,
                  ),
                  32.height,
                  if (state is! EmailValid) ...[
                    SendEmailWidget(
                      errorMessage:
                          state is EmailInvalid ? state.message : null,
                    ),
                  ] else ...[
                    const SendPhoneWidget(),
                  ],
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
