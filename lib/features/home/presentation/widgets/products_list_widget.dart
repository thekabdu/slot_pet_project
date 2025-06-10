import 'package:clot/features/home/data/models/products_model.dart';
import 'package:clot/features/home/presentation/bloc/products_bloc/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListByCategories extends StatefulWidget {
  final List<ProductsModel> products;
  const ProductListByCategories(this.products, {super.key});

  @override
  _ProductListByCategoriesState createState() =>
      _ProductListByCategoriesState();
}

class _ProductListByCategoriesState extends State<ProductListByCategories> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      context.read<ProductsBloc>().add(const ProductsEvent.loadMore());
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      itemCount: widget.products.length,
      itemBuilder: (context, index) {
        final product = widget.products[index];
        return ListTile(
          leading: Image.network(product.image ?? '', width: 50),
          title: Text(product.title),
          subtitle: Text("\$${product.price}"),
        );
      },
    );
  }
}
