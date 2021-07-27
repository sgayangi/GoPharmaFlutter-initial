import 'package:badges/badges.dart';
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
        appBar: AppBar(
          title: Text("Products"),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Badge(
                badgeContent: Text('3'),
                child: Icon(
                  Icons.shopping_cart,
                  size: 30.0,
                ),
              ),
            ),
          ],
        ),
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
