import 'package:flutter/material.dart';

@immutable
abstract class CameraEvent {}

class ErrorEvent extends CameraEvent {
  final String error;

  ErrorEvent(this.error);
}

class TakePhotoEvent extends CameraEvent {}

class CameraStoppedEvent extends CameraEvent {}

class PhotoCapturedEvent extends CameraEvent {}
