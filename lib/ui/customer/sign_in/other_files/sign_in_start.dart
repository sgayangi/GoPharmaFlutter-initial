import 'package:flutter/material.dart';
import 'package:go_pharma/ui/common/colors.dart';
import 'package:go_pharma/ui/common/widgets/rounded_button.dart';
import 'package:go_pharma/ui/common/widgets/text_field.dart';

class SignInStart extends StatelessWidget {
  static const String id = "sign_in";
  String title = "Sign In";
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                title,
              ),
            ],
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                "Sign In to your Account",
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: GoPharmaColors.SecondaryColor),
              ),
              Spacer(),
              TextFieldContainer(
                child: TextField(
                  controller: emailController,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                  onChanged: (String value) {},
                  cursorColor: GoPharmaColors.SecondaryColor,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: GoPharmaColors.SecondaryColor,
                    ),
                    hintText: 'Your Email',
                    hintStyle: TextStyle(
                      color: GoPharmaColors.HintTextColor,
                      fontSize: 18.0,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              TextFieldContainer(
                child: TextField(
                  controller: passwordController,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                  //TODO: add bloc here
                  obscureText: true,
                  onChanged: (String value) {},
                  cursorColor: GoPharmaColors.SecondaryColor,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: GoPharmaColors.SecondaryColor,
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: GoPharmaColors.HintTextColor,
                      fontSize: 18.0,
                    ),
                    border: InputBorder.none,
                    suffixIcon: GestureDetector(
                      child: Icon(
                        Icons.visibility,
                        color: GoPharmaColors.SecondaryColor,
                      ),
                      onTap: () {
                        //      TODO: toggle password visibility
                        print("Tapped");
                      },
                    ),
                  ),
                ),
              ),
              Spacer(),
              Text(
                "Don't have an account? Sign up.",
                style: TextStyle(
                  color: GoPharmaColors.SecondaryColor,
                ),
              ),
              Spacer(),
              RoundedButtonFilled(
                title: "SIGN UP",
                size: MediaQuery.of(context).size,
                fillColor: GoPharmaColors.SecondaryColor,
                textColor: GoPharmaColors.WhiteColor,
                onTapped: () {},
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
