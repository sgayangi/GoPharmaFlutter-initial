import 'package:flutter/material.dart';

@immutable
class CameraState {
  final String error;

  CameraState({
    required this.error,
  });

  static CameraState get initialState => CameraState(
        error: '',
      );

  CameraState clone({
    String error = '',
  }) {
    return CameraState(
      error: error ?? this.error,
    );
  }
}
