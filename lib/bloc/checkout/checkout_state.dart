import 'package:flutter/material.dart';

@immutable
class CheckoutState {
  final String error;

  CheckoutState({
    required this.error,
  });

  static CheckoutState get initialState => CheckoutState(
        error: '',
      );

  CheckoutState clone({
    String error = '',
  }) {
    return CheckoutState(
      error: error ?? this.error,
    );
  }
}
