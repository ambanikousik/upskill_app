import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:upskillapp/bloc/bloc.dart';
import 'package:upskillapp/models/models.dart';

class DomainScreen extends StatelessWidget {
  final DomainsList domainsList;

  DomainScreen({
    Key key,
    @required this.domainsList,
  })
      : assert(domainsList != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: UniqueKey(),
      backgroundColor: white,
      appBar: UpskillAppBar(action: () {
        BlocProvider.of<UpskillBloc>(context)
            .add(UpskillSurveyEvent());
      },),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: width * 4),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: Text(
                  'Please select your domain',
                  style: headline_2,
                ),
              ),
              GridView.builder(
                itemCount: domainsList.domains.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.1,
                ),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return DomainGrid(
                    domainText: domainsList.domains[index].title,
                    image: domainsList.domains[index].image,
                    action: () {
                      BlocProvider.of<UpskillBloc>(context)
                          .add(UpskillUserEvent());
                      BlocProvider.of<UserBloc>(context).add(TopicUserEvent());
                    },
                  );
                },
              ),
              SizedBox(
                height: height * 10,
              ),
              GestureDetector(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: height * 2, horizontal: width * 8),
                    child: Text(
                      'Contributor',
                      style: smallBlueBold,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.withOpacity(0.15)),
                  ),
                ),
                onTap: () {
                  BlocProvider.of<UpskillBloc>(context)
                      .add(UpskillContributorEvent());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
