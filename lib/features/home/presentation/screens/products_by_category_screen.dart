import 'package:auto_route/auto_route.dart';
import 'package:clot/core/presentation/app_bar/custom_app_bar.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/home/presentation/bloc/products_by_categories_bloc/products_by_categories_bloc.dart';
import 'package:clot/features/home/presentation/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ProductsByCategoryScreen extends StatefulWidget {
  const ProductsByCategoryScreen({super.key});

  @override
  State<ProductsByCategoryScreen> createState() =>
      _ProductsByCategoryScreenState();
}

class _ProductsByCategoryScreenState extends State<ProductsByCategoryScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: BlocBuilder<ProductsByCategoriesBloc, ProductsByCategoriesState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(child: Text(message)),
            loaded: (products, page) {
              return SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      '${products.first.category} (${products.length})',
                      style: AppTextStyles.s16w700,
                    ),
                    14.height,
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return ProductItem(
                          title: products[index].title,
                          image: products[index].image,
                          price: products[index].price,
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          8.height,
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
