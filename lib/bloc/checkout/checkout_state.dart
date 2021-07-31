import 'package:flutter/material.dart';
import 'package:go_pharma/repos/models/customer/products/product.dart';

@immutable
class CheckoutState {
  final String error;
  final List<Product> productList;
  final double productListTotal;

  CheckoutState({
    required this.error,
    required this.productList,
    required this.productListTotal,
  });

  static CheckoutState get initialState => CheckoutState(
        error: '',
        productList: [],
        productListTotal: 0.0,
      );

  CheckoutState clone({
    String error = '',
    required List<Product> productList,
    required productListTotal,
  }) {
    return CheckoutState(
      error: error,
      productList: productList,
      productListTotal: productListTotal,
    );
  }
}
