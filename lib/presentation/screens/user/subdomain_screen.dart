import 'package:flutter/material.dart';
import 'package:upskillapp/bloc/bloc.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';
import 'package:upskillapp/models/models.dart';

class SubdomainScreen extends StatelessWidget {

  final SubDomainsList subDomainsList;

  SubdomainScreen({
    Key key,
    @required this.subDomainsList,
  })
      : assert(subDomainsList != null),
        super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    "Thank you! Let's start",
                    style: headline_1,
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: subDomainsList.subdomains.length,
                    itemBuilder: (BuildContext context, int index) {
                      return WhiteButton(
                        buttonText: subDomainsList.subdomains[index].title,
                        action: () {
                          BlocProvider.of<UserBloc>(context).add(
                              TopicUserEvent());
                        },
                      );
                    }),
              ],
            ),
          ),
        ));
  }
}
