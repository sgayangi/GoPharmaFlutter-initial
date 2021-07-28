import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_pharma/repos/models/customer/products/product.dart';
import 'package:go_pharma/ui/common/colors.dart';
import 'package:go_pharma/ui/customer/headers/shopping_cart_app_bar.dart';
import 'package:go_pharma/ui/customer/products/product_card.dart';

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
        body: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductCardImage(
                  padding: 0,
                  imageURL: product.imageURL,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width - 50,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  product.name,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                    color: GoPharmaColors.BlackColor,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  product.description,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black87.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 20.0,
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: GoPharmaColors.SecondaryColor,
                padding: EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 20,
                ),
                textStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: Text(
                "Add to Cart",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
