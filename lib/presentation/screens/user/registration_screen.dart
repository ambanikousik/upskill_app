import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';
import 'package:upskillapp/bloc/bloc.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Image.asset(cover1),
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: width * 100,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: width * 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Signup', style: headline_1),
                    Container(
                      color: Colors.black,
                      height: height / 4,
                      width: width * 40,
                    ),
                    Text(
                      'Email or name',
                      style: normalText_1,
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                        hintText: 'xyz@email.com',
                        fillColor: Colors.black.withOpacity(0.1),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                    ),
                    Text(
                      'Password',
                      style: normalText_1,
                    ),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      autofocus: false,
                      decoration: InputDecoration(
                        hintText: '********',
                        fillColor: Colors.black.withOpacity(0.1),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                    BlueButton(
                      buttonText: 'Signup',
                      action: () {
                        BlocProvider.of<UserBloc>(context)
                            .add(AnalysisUserEvent());
                      },
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
            ),
          ),
        ],
      ),
    );
  }
}
