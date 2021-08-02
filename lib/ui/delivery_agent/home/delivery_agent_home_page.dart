import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_pharma/bloc/delivery_agent/navigation/delivery_navigation_bloc.dart';
import 'package:go_pharma/ui/delivery_agent/home/components/bottom_navigation_bar.dart';

class DeliveryAgentHomePage extends StatelessWidget {
  static final String id = "delivery_agent_home_page";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DeliveryNavigationBloc(context),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          body: Container(
            child: Column(
              children: [],
            ),
          ),
          bottomNavigationBar: DeliveryAgentBottomNavigationBar(),
        ),
      ),
    );
  }
}
