import 'package:auto_route/auto_route.dart';
import 'package:clot/core/presentation/app_bar/custom_double_app_bar.dart';
import 'package:clot/core/presentation/widgets/app_search_placeholder.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_icons.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/profile/presentation/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:clot/features/home/presentation/bloc/categories_bloc/categories_bloc.dart';
import 'package:clot/features/home/presentation/bloc/products_bloc/products_bloc.dart';
import 'package:clot/features/home/presentation/widgets/categories_list_widget.dart';
import 'package:clot/features/home/presentation/widgets/drop_down_button.dart';
import 'package:clot/features/home/presentation/widgets/product_horizontal_list.dart';
import 'package:clot/features/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<CategoriesBloc>().add(const CategoriesEvent.started());
    context.read<ProductsBloc>().add(const ProductsEvent.fetch());
    context.read<WishlistBloc>().add(const WishlistEvent.loadFavorites());
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      context.read<ProductsBloc>().add(const ProductsEvent.loadMore());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomDoubleAppBar(
        leading: InkWell(
          onTap: () => AutoTabsRouter.of(context).setActiveIndex(3),
          child: const CircleAvatar(
            backgroundColor: AppColors.primary100,
            radius: 100,
            backgroundImage: NetworkImage(
              "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?q=80&w=3307&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            ),
          ),
        ),
        center: const DropDownButton(),
        action: InkWell(
            onTap: () => context.router.push(const CartRoute()),
            child: SvgPicture.asset(AppIcons.icFrame)),
      ),
      body: BlocBuilder<ProductsBloc, ProductsState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(child: Text(message)),
            loaded: (products, page) {
              final popular = products.where((p) => p.popular == true).toList();
              final gaming = products
                  .where((p) => p.category?.toLowerCase() == 'gaming')
                  .toList();
              final mobile = products
                  .where((p) => p.category?.toLowerCase() == 'mobile')
                  .toList();
              final audio = products
                  .where((p) => p.category?.toLowerCase() == 'audio')
                  .toList();
              return CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AppSearchPlaceholder(title: 'Search'),
                        16.height,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Categories',
                                  style: AppTextStyles.s16w700),
                              InkWell(
                                onTap: () => context.router
                                    .push(const CategoriesRoute()),
                                child: const Text('See all',
                                    style: AppTextStyles.s16w400),
                              ),
                            ],
                          ),
                        ),
                        16.height,
                        const CategoriesListWidget(),
                        24.height,
                        ProductsHorizontalList(
                            title: 'Popular', products: popular),
                        ProductsHorizontalList(
                            title: 'Gaming', products: gaming),
                        ProductsHorizontalList(
                            title: 'Mobile', products: mobile),
                        ProductsHorizontalList(title: 'Audio', products: audio),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
