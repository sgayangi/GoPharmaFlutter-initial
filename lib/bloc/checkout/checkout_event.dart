import 'package:flutter/material.dart';

@immutable
abstract class CheckoutEvent {}

class ErrorEvent extends CheckoutEvent {
  final String error;

  ErrorEvent(this.error);
}
