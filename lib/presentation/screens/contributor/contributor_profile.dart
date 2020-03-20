import 'package:flutter/material.dart';
import 'package:upskillapp/bloc/bloc.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';
import 'package:upskillapp/models/models.dart';

class ContributorProfile extends StatelessWidget {

  final ContributorModel contributorModel;

  ContributorProfile({
    Key key,
    @required this.contributorModel,
  })
      : assert(contributorModel != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UpskillAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: width * 4, vertical: height * 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: width * 35,
                      width: width * 35,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(profile),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Positioned(
                        right: 00.0,
                        top: width * 23,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.camera_alt, color: blue,),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(color: blue)
                          ),))
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 2),
                  child: Text(
                    contributorModel.name,
                    style: headline_2,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: Text(
                  'My tests statistics',
                  style: topicTitleText,
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: contributorModel.stats.length,
                  itemBuilder: (BuildContext context, int index) {
                    final _stats = contributorModel.stats;
                    return TopicTileContributor(
                      title: _stats[index].title,
                      image: _stats[index].image,
                      date: _stats[index].created,
                      participants: _stats[index].view,
                      approved: true,
                      action: () {
                        BlocProvider.of<ContributorBloc>(context).add(
                            ContributorTestDetailsEvent(
                                contributorModel: contributorModel,
                                index: index));
                      },
                    );
                  }),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: Text(
                  'Claim Rewards',
                  style: topicTitleText,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                        alignment: Alignment.center,
                        width: width * 25,
                        child: Text('20pt', style: normalText_1,)),
                    Container(
                        alignment: Alignment.centerLeft,
                        width: width * 30,
                        child: Text('5% discount', style: normalText_1)),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: height * 2, horizontal: width * 8),
                      child: Text(
                        'Claim',
                        style: smallBlueBold,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.withOpacity(0.15)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                        alignment: Alignment.center,
                        width: width * 25,
                        child: Text('100pt', style: normalText_1,)),
                    Container(
                        alignment: Alignment.centerLeft,
                        width: width * 30,
                        child: Text('15% discount', style: normalText_1)),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: height * 2, horizontal: width * 8),
                      child: Text(
                        'Claim',
                        style: smallBlueBold,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.withOpacity(0.15)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 5,),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: width * 35,
                  height: height * 6.5,
                  child: BlueButton(
                    buttonText: 'Homepage',
                    textSize: width * 5,
                    action: () {
                      BlocProvider.of<ContributorBloc>(context)
                          .add(ContributorCreateTestEvent());
                      BlocProvider.of<UpskillBloc>(context)
                          .add(UpskillDomainEvent());
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
