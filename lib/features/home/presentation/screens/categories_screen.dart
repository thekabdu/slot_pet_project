import 'package:auto_route/auto_route.dart';
import 'package:clot/core/presentation/app_bar/custom_app_bar.dart';
import 'package:clot/core/presentation/widgets/app_custom_button.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/home/presentation/bloc/categories_bloc/categories_bloc.dart';
import 'package:clot/features/home/presentation/bloc/products_by_categories_bloc/products_by_categories_bloc.dart';
import 'package:clot/features/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = context.watch<CategoriesBloc>().state.maybeWhen(
          fetch: (categories) => categories,
          orElse: () => [],
        );
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Shop by Categories',
              style: AppTextStyles.s24w700,
            ),
            14.height,
            ListView.separated(
              shrinkWrap: true,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return AppCustomButton(
                  onTap: () {
                    context.read<ProductsByCategoriesBloc>().add(
                          ProductsByCategoriesEvent.started(
                            categories[index],
                          ),
                        );
                    context.router.push(
                      const ProductsByCategoryRoute(),
                    );
                  },
                  padding: const EdgeInsets.all(12),
                  borderRadiusRadii: 8,
                  color: AppColors.bglight2,
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/images/img_not_support.jpg',
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      8.width,
                      Text(
                        categories[index],
                        style: AppTextStyles.s16w500
                            .copyWith(color: AppColors.black100),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) => 18.height,
            ),
          ],
        ),
      ),
    );
  }
}
