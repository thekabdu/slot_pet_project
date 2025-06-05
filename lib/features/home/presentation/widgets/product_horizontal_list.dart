import 'package:auto_route/auto_route.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/home/data/models/products_model.dart';
import 'package:clot/features/home/presentation/bloc/products_by_categories_bloc/products_by_categories_bloc.dart';
import 'package:clot/features/home/presentation/widgets/product_item.dart';
import 'package:clot/features/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsHorizontalList extends StatelessWidget {
  final String title;
  final List<ProductsModel> products;

  const ProductsHorizontalList({
    super.key,
    required this.title,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: AppTextStyles.s16w700),
              InkWell(
                onTap: () {
                  context.read<ProductsByCategoriesBloc>().add(
                        ProductsByCategoriesEvent.started(
                          title.toLowerCase(),
                        ),
                      );
                  context.router.push(
                    const ProductsByCategoryRoute(),
                  );
                },
                child: const Text('See all', style: AppTextStyles.s16w400),
              )
            ],
          ),
        ),
        8.height,
        SizedBox(
          height: 280, // adjust for item height
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return SizedBox(
                width: 160,
                child: ProductItem(
                  title: product.title,
                  image: product.image,
                  price: product.price,
                ),
              );
            },
            separatorBuilder: (_, __) => const SizedBox(width: 12),
          ),
        ),
        24.height,
      ],
    );
  }
}
