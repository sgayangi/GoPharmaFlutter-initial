import 'package:badges/badges.dart';
import 'package:go_pharma/ui/common/colors.dart';
import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  final Color color;
  final int itemCount;
  const ShoppingCart({
    this.color = GoPharmaColors.SecondaryColor,
    this.itemCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: itemCount > 0
          ? Badge(
              badgeColor: Colors.redAccent,
              toAnimate: true,
              badgeContent: Text("$itemCount"),
              child: Icon(
                Icons.shopping_cart,
                size: 30.0,
                color: this.color,
              ),
            )
          : Icon(
              Icons.shopping_cart,
              size: 30.0,
              color: this.color,
            ),
    );
  }
}
