import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './product_item.dart';
import '../providers/product_provider.dart';

class ProductGrid extends StatelessWidget {
  final bool showfavouroite;
  ProductGrid(this.showfavouroite);
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products =
        showfavouroite ? productData.favouriteItems : productData.items;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 3 / 2,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: products[index],
        child: ProductItem(),
      ),
      itemCount: products.length,
      padding: const EdgeInsets.all(10),
    );
  }
}
