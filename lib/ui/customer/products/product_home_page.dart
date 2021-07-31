import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_pharma/bloc/checkout/checkout_bloc.dart';
import 'package:go_pharma/bloc/checkout/checkout_state.dart';
import 'package:go_pharma/ui/common/colors.dart';
import 'package:go_pharma/ui/common/widgets/back_button.dart';
import 'package:go_pharma/ui/customer/products/dummy_values/products/products.dart';
import 'package:go_pharma/ui/customer/products/product_card.dart';
import 'components/shopping_cart.dart';

class ProductHomePage extends StatelessWidget {
  static final String id = "product_home_page";

  const ProductHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: GoPharmaColors.PrimaryColor,
          elevation: 0,
          leading: CustomBackButton(
            color: GoPharmaColors.WhiteColor,
          ),
          actions: [
            BlocBuilder<CheckoutBloc, CheckoutState>(
              builder: (context, state) {
                return ShoppingCart(
                  color: GoPharmaColors.WhiteColor,
                  itemCount: state.productList.length,
                );
              },
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
