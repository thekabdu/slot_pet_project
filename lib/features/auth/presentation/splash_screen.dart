import 'package:auto_route/auto_route.dart';
import 'package:clot/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:clot/features/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _navigated = false;

  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().add(const AuthEvent.checkAuthStatus());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (_navigated) return;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!mounted) return;
          state.mapOrNull(
            authenticated: (_) {
              _navigated = true;
              context.router.replaceAll([const AppIndexRoute()]);
            },
            unauthenticated: (_) {
              _navigated = true;
              context.router.replaceAll([const SignInRoute()]);
            },
          );
        });
      },
      child: const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
