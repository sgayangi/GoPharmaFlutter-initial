import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class SelectPhotoScreen extends StatelessWidget {
  static final String id = "select_photo_screen";
  final ImagePicker imagePicker = new ImagePicker();
  SelectPhotoScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
              child: Text('Save'),
              onPressed: () async {
                Map<Permission, PermissionStatus> statuses = await [
                  Permission.camera,
                  Permission.storage,
                ].request();
                var status = await Permission.camera.status;
                print(status);
                if (status == PermissionStatus.granted) {
                  XFile? image = await imagePicker.pickImage(
                    source: ImageSource.gallery,
                  );
                } else if (status == PermissionStatus.denied) {
                  // We didn't ask for permission yet or the permission has been denied before but not permanently.
                }
              },
            ),
          )
        ],
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
