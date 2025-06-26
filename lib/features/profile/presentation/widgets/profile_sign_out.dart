import 'package:auto_route/auto_route.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:clot/features/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileSignOutButton extends StatelessWidget {
  const ProfileSignOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.read<AuthBloc>().add(const AuthEvent.loggedOut());
        context.router.replaceAll([const SignInRoute()]);
      },
      child: Text(
        'Sign Out',
        style: AppTextStyles.s16w700.copyWith(
          color: AppColors.red100,
        ),
      ),
    );
  }
}
