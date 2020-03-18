import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:upskillapp/bloc/bloc.dart';

class SurveyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: UniqueKey(),
      backgroundColor: white,
      appBar: UpskillAppBar(),
      body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: width * 5),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 2),
                  child: Container(
                    height: height * 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            fit: BoxFit.cover, image: AssetImage(cover2))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 2),
                  child: Text(
                    'Why do you want to assess yourself?',
                    style: headline_1,
                  ),
                ),
                WhiteButton(
                  buttonText: 'To check my skill',
                  icon: Icons.star_border,
                  action: () {
                    BlocProvider.of<UpskillBloc>(context)
                        .add(UpskillDomainEvent());
                  },
                ),
                WhiteButton(
                  buttonText: 'To improve',
                  icon: Icons.bookmark_border,
                  action: () {
                    BlocProvider.of<UpskillBloc>(context)
                        .add(UpskillDomainEvent());
                  },
                ),
                WhiteButton(
                  buttonText: 'For fun',
                  icon: Icons.sentiment_satisfied,
                  action: () {
                    BlocProvider.of<UpskillBloc>(context)
                        .add(UpskillDomainEvent());
                  },
                ),
                WhiteButton(
                  buttonText: 'To learn',
                  icon: Icons.star_border,
                  action: () {
                    BlocProvider.of<UpskillBloc>(context)
                        .add(UpskillDomainEvent());
                  },
                ),
              ],
            ),
          )),
    );
  }
}
