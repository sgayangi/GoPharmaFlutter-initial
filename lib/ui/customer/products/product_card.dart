import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_pharma/repos/models/customer/products/product.dart';
import 'package:go_pharma/ui/common/colors.dart';
import 'package:go_pharma/ui/customer/products/product_full_view.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: GoPharmaColors.SecondaryColor.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width - 20,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductFullView(product: product),
              ),
            );
          },
          child: Container(
            height: 150,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Row(
                  children: [
                    ProductCardImage(
                      imageURL: product.imageURL,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w500,
                              color: GoPharmaColors.BlackColor,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          product.inStock
                              ? SizedBox(
                                  height: 5.0,
                                )
                              : RichText(
                                  text: TextSpan(
                                    text:
                                        "This item is currently out of stock.",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: GoPharmaColors.SecondaryColor,
                                    ),
                                  ),
                                ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "Rs.${product.price.toStringAsFixed(2)}",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: GoPharmaColors.BlackColor,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProductCardImage extends StatelessWidget {
  final double height;
  final double width;
  final double padding;
  const ProductCardImage({
    Key? key,
    required this.imageURL,
    this.height = 125.0,
    this.width = 125.0,
    this.padding = 10,
  }) : super(key: key);

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        this.padding,
      ),
      child: Container(
        height: this.height,
        width: this.width,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: GoPharmaColors.WhiteColor,
          ),
          image: DecorationImage(
            image: ExactAssetImage(
              imageURL,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
