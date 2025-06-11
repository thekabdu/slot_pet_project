import 'package:auto_route/auto_route.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/profile/presentation/bloc/bloc/user_bloc.dart';
import 'package:clot/features/profile/presentation/widgets/profile_avatar_widget.dart';
import 'package:clot/features/profile/presentation/widgets/profile_info_widget.dart';
import 'package:clot/features/profile/presentation/widgets/profile_menu_item.dart';
import 'package:clot/features/profile/presentation/widgets/profile_sign_out.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    context.read<UserBloc>().add(const UserEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return state.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (message) => Center(child: Text(message)),
          fetch: (user) => Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ProfileAvatarWidget(),
                ProfileInfoWidget(
                  userModel: user,
                ),
                32.height,
                const ProfileMenuItem(title: 'Wishlist'),
                const ProfileMenuItem(title: 'Payment'),
                const ProfileMenuItem(title: 'Support'),
                const ProfileSignOutButton(),
              ],
            ),
          ),
        );
      },
    );
  }
}
