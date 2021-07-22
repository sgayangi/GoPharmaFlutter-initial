import 'package:flutter/material.dart';

import '../colors.dart';

class CommonTextField extends StatelessWidget {
  final String hintText;
  const CommonTextField({
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 34.0,
        vertical: 10.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: GoPharmaColors.TextBoxColor,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 1.0,
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: this.hintText,
              hintStyle: TextStyle(
                color: GoPharmaColors.HintTextColor,
                fontSize: 16.0,
              ),
            ),
            style: TextStyle(
              decorationColor: GoPharmaColors.SecondaryColor,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
