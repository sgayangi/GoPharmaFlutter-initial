import 'package:flutter/material.dart';

@immutable
abstract class DeliveryEvent {}

class ErrorEvent extends DeliveryEvent {
  final String error;

  ErrorEvent(this.error);
}

class UpdateDeliveryStatusEvent extends DeliveryEvent {}
