import 'dart:io';

import 'package:flutter/material.dart';

@immutable
class CameraState {
  final String error;
  final List<File> photos;
  final List<String> photosUrls;

  CameraState({
    required this.error,
    required this.photos,
    required this.photosUrls,
  });

  static CameraState get initialState => CameraState(
        error: '',
        photos: [],
        photosUrls: [],
      );

  CameraState clone({
    String error = '',
    required List<File> photos,
    required List<String> photosUrls,
  }) {
    return CameraState(
      error: error,
      photosUrls: photosUrls,
      photos: photos,
    );
  }
}
