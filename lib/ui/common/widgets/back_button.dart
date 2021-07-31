import 'package:flutter/material.dart';

import '../colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackButton(
      color: GoPharmaColors.SecondaryColor,
    );
  }
}
