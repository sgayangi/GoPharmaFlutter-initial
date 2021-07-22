import 'package:flutter/material.dart';
import 'package:go_pharma/ui/common/colors.dart';
import 'package:go_pharma/ui/common/widgets/text_field.dart';

class SignInStart extends StatelessWidget {
  static const String id = "sign_in";
  String title = "Sign In";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Row(
            children: [
              Text(title),
            ],
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100.0,
              ),
              Text(
                "Sign In to your Account",
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: GoPharmaColors.SecondaryColor),
              ),
              SizedBox(
                height: 100.0,
              ),
              CommonTextField(
                hintText: 'Email Address',
              ),
              CommonTextField(
                hintText: 'Password',
              ),
              SizedBox(
                height: 100.0,
              ),
              GestureDetector(
                child: Text(
                  "Don't have an account? Sign up.",
                  style: TextStyle(
                    color: GoPharmaColors.SecondaryColor,
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
