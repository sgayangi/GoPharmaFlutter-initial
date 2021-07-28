import 'package:flutter/material.dart';
import 'package:go_pharma/repos/models/customer/products/product.dart';
import 'package:go_pharma/ui/customer/headers/shopping_cart_app_bar.dart';

class ProductFullView extends StatelessWidget {
  static final String id = "product_full_view";
  final Product product;
  const ProductFullView({
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ShoppingCartAppBar(),
      ),
    );
  }
}
