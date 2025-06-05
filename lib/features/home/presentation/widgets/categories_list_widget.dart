import 'package:auto_route/auto_route.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/home/presentation/bloc/categories_bloc/categories_bloc.dart';
import 'package:clot/features/home/presentation/bloc/products_by_categories_bloc/products_by_categories_bloc.dart';
import 'package:clot/features/home/presentation/widgets/categories_item.dart';
import 'package:clot/features/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesListWidget extends StatelessWidget {
  const CategoriesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: Text("Нажмите, чтобы загрузить")),
          loading: () => const Center(child: CircularProgressIndicator()),
          fetch: (categories) => SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
              itemBuilder: (context, index) => InkWell(
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
                child: CategoriesItem(
                  title: categories[index],
                ),
              ),
              separatorBuilder: (BuildContext context, int index) => 12.width,
            ),
          ),
          error: (message) => Center(child: Text(message)),
        );
      },
    );
  }
}
