import 'package:flutter/material.dart';

import '../colors.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;

  const TextFieldContainer({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: GoPharmaColors.LighterSecondaryColor,
        borderRadius: BorderRadius.circular(29),
        border: Border.all(
          color: GoPharmaColors.WhiteColor,
        ),
      ),
      child: child,
    );
  }
}

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final IconData? suffixIcon;
  final ValueChanged<String> onChanged;
  final bool hideText;
  RoundedInputField({
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
    this.suffixIcon,
    this.hideText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.black,
        ),
        obscureText: this.hideText,
        onChanged: onChanged,
        cursorColor: GoPharmaColors.SecondaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: GoPharmaColors.SecondaryColor,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: GoPharmaColors.HintTextColor,
            fontSize: 18.0,
          ),
          border: InputBorder.none,
          suffixIcon: suffixIcon != null
              ? GestureDetector(
                  child: Icon(
                    suffixIcon,
                    color: GoPharmaColors.SecondaryColor,
                  ),
                  onTap: () {
                    //      TODO: toggle password visibility
                  },
                )
              : null,
        ),
      ),
    );
  }
}
