import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:upskillapp/bloc/bloc.dart';

class UserSplashScreen extends StatelessWidget {
  void nextScreen(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      BlocProvider.of<UserBloc>(context).add(SubdomainUserEvent());
    });
  }

  @override
  Widget build(BuildContext context) {
    nextScreen(context);
    ScreenSize().init(context);
    return Scaffold(
      key: UniqueKey(),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: width * 30,
          child: Image.asset(logo),
        ),
      ),
    );
  }
}
