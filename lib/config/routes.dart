import 'package:flutter/cupertino.dart';
import 'package:go_pharma/ui/customer/home/customer_home_page.dart';
import 'package:go_pharma/ui/customer/products/product_home_page.dart';
import 'package:go_pharma/ui/customer/products/shopping_cart_page.dart';
import 'package:go_pharma/ui/customer/sign_in/other_files/sign_in_start.dart';
import 'package:go_pharma/ui/main_page.dart';
import 'package:go_pharma/ui/sign_up/sign_up.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  SignInStart.id: (context) => SignInStart(),
  SignUpStart.id: (context) => SignUpStart(),
  MainPage.id: (context) => MainPage(),
  CustomerHomePage.id: (context) => CustomerHomePage(),
  ProductHomePage.id: (context) => ProductHomePage(),
  ShoppingCartPage.id: (context) => ShoppingCartPage(),
};
