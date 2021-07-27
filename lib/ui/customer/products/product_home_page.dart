import 'package:flutter/material.dart';
import 'package:go_pharma/ui/customer/products/dummy_values/products/products.dart';
import 'package:go_pharma/ui/customer/products/product_card.dart';

class ProductHomePage extends StatelessWidget {
  static final String id = "product_home_page";
  const ProductHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: ListView.builder(
            physics: ClampingScrollPhysics(),
            itemCount: products.length,
            itemBuilder: (context, index) => ProductCard(
              product: products[index],
            ),
          ),
        ),
      ),
    );
  }
}
