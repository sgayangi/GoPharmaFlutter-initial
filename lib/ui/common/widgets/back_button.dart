import 'package:flutter/material.dart';

import '../colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 30.0,
          width: 30.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.arrow_back,
            color: GoPharmaColors.SecondaryColor,
            size: 30.0,
          ),
        ),
      ),
    );
  }
}
