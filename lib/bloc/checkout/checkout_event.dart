import 'package:flutter/material.dart';
import 'package:go_pharma/repos/models/customer/products/product.dart';

@immutable
abstract class CheckoutEvent {}

class ErrorEvent extends CheckoutEvent {
  final String error;

  ErrorEvent(this.error);
}

class UpdateProductListEvent extends CheckoutEvent {
  final Product product;

  UpdateProductListEvent(this.product);
}

class UploadPrescriptionEvent extends CheckoutEvent {}
