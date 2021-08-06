import 'dart:io';
import 'package:path/path.dart' as path;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_pharma/bloc/customer/camera/camera_bloc.dart';
import 'package:go_pharma/bloc/customer/camera/camera_state.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:uuid/uuid.dart';

class SelectPhotoScreen extends StatelessWidget {
  static final String id = "select_photo_screen";
  final ImagePicker imagePicker = new ImagePicker();

  SelectPhotoScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CameraBloc, CameraState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100,
                child: Text("JKnkjn"),
              ),
              Container(
                margin: EdgeInsets.all(16),
                child: OutlinedButton(
                  child: Text('Take From Camera'),
                  onPressed: () async {
                    PermissionStatus status =
                        await Permission.storage.request();
                    var cameraStatus = await Permission.camera.status;
                    print(cameraStatus);
                    XFile? image;
                    if (cameraStatus.isGranted) {
                      image = await imagePicker.pickImage(
                        source: ImageSource.gallery,
                      );
                      if (image != null) {
                        int length = state.photos.length + 1;
                        String fileExtension = path.extension(image.path);
                        GalleryItem galleryItemImage = GalleryItem(
                          id: Uuid().v1(),
                          resource: image.path,
                          isSvg: fileExtension.toLowerCase() == ".svg",
                        );
                      }
                    } else if (cameraStatus == PermissionStatus.denied) {
                      //  TODO: do something
                    }
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                child: OutlinedButton(
                  child: Text('Upload From Gallery'),
                  onPressed: () async {
                    PermissionStatus status =
                        await Permission.storage.request();
                    var storageStatus = await Permission.storage.status;

                    if (storageStatus.isGranted) {
                      XFile? image = await imagePicker.pickImage(
                        source: ImageSource.gallery,
                      );
                    } else if (storageStatus.isDenied) {
                      //  TODO: do something
                    }
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class GalleryItem {
  GalleryItem({required this.id, required this.resource, this.isSvg = false});

  final String id;
  String resource;
  final bool isSvg;
}
