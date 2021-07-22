import 'package:flutter/cupertino.dart';
import 'package:go_pharma/ui/customer/home/customer_home_page.dart';
import 'package:go_pharma/ui/customer/sign_in/other_files/sign_in_start.dart';
import 'package:go_pharma/ui/home_page.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  SignInStart.id: (context) => SignInStart(),
  HomePage.id: (context) => HomePage(),
  CustomerHomePage.id: (context) => CustomerHomePage(),
};
