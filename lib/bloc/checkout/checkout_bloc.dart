import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_pharma/repos/models/customer/products/product.dart';
import 'dart:async';

import 'checkout_event.dart';
import 'checkout_state.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc(BuildContext context) : super(CheckoutState.initialState);

  @override
  Stream<CheckoutState> mapEventToState(CheckoutEvent event) async* {
    switch (event.runtimeType) {
      case ErrorEvent:
        final error = (event as ErrorEvent).error;
        // yield state.clone(error: "", productList: [], productListTotal: 0);
        yield state.clone(error: error, productList: [], productListTotal: 0);
        break;
      case UpdateProductListEvent:
        final product = (event as UpdateProductListEvent).product;
        List<Product> productList = state.productList;
        double tempTotal = state.productListTotal;
        if (productList.contains(product)) {
          productList.remove(product);
          tempTotal -= product.price;
        } else {
          productList.add(product);
          tempTotal += product.price;
        }
        yield state.clone(
            productListTotal: tempTotal, productList: productList);
        break;
    }
  }

  @override
  void onError(Object error, StackTrace stacktrace) {
    _addErr(error);
    super.onError(error, stacktrace);
  }

  @override
  Future<void> close() async {
    await super.close();
  }

  void _addErr(e) {
    if (e is StateError) return;
    try {
      add(ErrorEvent((e is String)
          ? e
          : (e.message ?? "Something went wrong. Please try again!")));
    } catch (e) {
      add(ErrorEvent("Something went wrong. Please try again!"));
    }
  }
}
