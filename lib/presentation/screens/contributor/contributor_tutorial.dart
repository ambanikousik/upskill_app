import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';
import 'package:upskillapp/bloc/bloc.dart';

class ContributorTutorial extends StatefulWidget {
  @override
  _ContributorTut1 createState() => _ContributorTut1();
}

class _ContributorTut1 extends State<ContributorTutorial> {
  final controller = PageController(
    initialPage: 0,
  );
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            height: height * 50,
            child: PageView(
              onPageChanged: (int index) {
                setState(() {
                  _index = index;
                });
              },
              controller: controller,
              children: <Widget>[Screen1(), Screen1(), Screen1()],
            ),
          ),
          SizedBox(
            height: height * 10,
          ),
          Container(
            width: width * 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[circleBar(0), circleBar(1), circleBar(2)],
            ),
          ),
          SizedBox(
            height: height * 15,
          ),
          _index != 2
              ? Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: width * 4),
                      child: GestureDetector(
                        onTap: () {
                          if (_index > 0) {
                            setState(() {
                              _index--;
                              print(_index);
                              controller.animateToPage(
                                _index,
                                duration: Duration(milliseconds: 400),
                                curve: Curves.easeInOut,
                              );
                            });
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: height * 1.5, horizontal: width * 4),
                          child: Text(
                            'Skip',
                            style: smallBlueBold,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue.withOpacity(0.15)),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (_index < 2) {
                          setState(() {
                            _index++;
                            print(_index);
                            controller.animateToPage(
                              _index,
                              duration: Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          });
                        }
                      },
                      child: Container(
                        height: height * 10,
                        width: width * 45,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Next',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * 6,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: width,
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              size: width * 7,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(35)),
                        ),
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        BlocProvider.of<ContributorBloc>(context)
                            .add(ContributorCreateTestEvent());
                      },
                      child: Container(
                        height: height * 10,
                        width: width * 60,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Start Now',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * 6,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: width,
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              size: width * 7,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(35)),
                        ),
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }

  Widget circleBar(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: _index == index ? height * 1.5 : height * 1.2,
      width: _index == index ? height * 1.5 : height * 1.2,
      decoration: BoxDecoration(
        color: _index == index ? green : green.withOpacity(0.2),
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
