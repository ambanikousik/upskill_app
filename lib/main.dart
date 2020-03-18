import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:upskillapp/bloc/bloc.dart';
import 'simple_bloc_delegate.dart';
import 'presentation/presentation.dart';
import 'data/data.dart';


void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => UpskillBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Upskill',
        home: BlocBuilder<UpskillBloc, UpskillState>(
          // ignore: missing_return
            builder: (context, state) {
              if (state is UpskillSplash) {
                return AnimatedSwitcher(
                    switchOutCurve: Threshold(0),
                    duration: Duration(milliseconds: 250),
                    transitionBuilder: (Widget child,
                        Animation<double> animation) {
                      return SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(0, 0.25),
                          end: Offset.zero,
                        ).animate(animation),
                        child: child,
                      );
                    },
                    child: SplashScreen());
              }
              if (state is UpskillTutorial) {
                return AnimatedSwitcher(
                    switchOutCurve: Threshold(0),
                    duration: Duration(milliseconds: 250),
                    transitionBuilder: (Widget child,
                        Animation<double> animation) {
                      return SlideTransition(
                        position: Tween<Offset>(
                          begin: Offset(0.25, 0),
                          end: Offset.zero,
                        ).animate(animation),
                        child: child,
                      );
                    },
                    child: UpskillTutorialScreen());
              }
              if (state is UpskillSurvey) {
                return AnimatedSwitcher(
                    switchOutCurve: Threshold(0),
                    duration: Duration(milliseconds: 250),
                    transitionBuilder: (Widget child,
                        Animation<double> animation) {
                      return SlideTransition(
                        position: Tween<Offset>(
                          begin: Offset(0.25, 0),
                          end: Offset.zero,
                        ).animate(animation),
                        child: child,
                      );
                    }, child: SurveyScreen());
              }
              if (state is UpskillDomain) {
                return AnimatedSwitcher(
                    duration: Duration(milliseconds: 250),
                    switchOutCurve: Threshold(0),
                    transitionBuilder: (Widget child,
                        Animation<double> animation) {
                      return SlideTransition(
                        position: Tween<Offset>(
                          begin: Offset(0.25, 0),
                          end: Offset.zero,
                        ).animate(animation),
                        child: child,
                      );
                    }, child: DomainScreen());
              }
              if (state is UpskillUser) {
                return AnimatedSwitcher(
                    switchOutCurve: Threshold(0),
                    duration: Duration(milliseconds: 250),
                    transitionBuilder: (Widget child,
                        Animation<double> animation) {
                      return SlideTransition(
                        position: Tween<Offset>(
                          begin: Offset(0.25, 0),
                          end: Offset.zero,
                        ).animate(animation),
                        child: child,
                      );
                    }, child: SubdomainScreen());
              }
              if (state is UpskillContributor) {
                return AnimatedSwitcher(
                    duration: Duration(milliseconds: 250),
                    transitionBuilder: (Widget child,
                        Animation<double> animation) {
                      return SlideTransition(
                        position: Tween<Offset>(
                          begin: Offset(0.25, 0),
                          end: Offset.zero,
                        ).animate(animation),
                        child: child,
                      );
                    }, child: ContributorTut1());
              }
            }
        ),
//        initialRoute: '/',
//        routes: {
//          '/': (context)=> SplashScreen(),
//          '/opening': (context)=> OpeningScreen(),
//          '/signin': (context)=> SigningScreen(),
//          '/survey': (context)=> SurveyScreen(),
//          '/domain': (context)=> DomainScreen(),
//          '/subdomain': (context)=> SubdomainScreen(),
//          '/topic': (context)=> TopicScreen(),
//          '/test1': (context)=> TestScreen(question:question1 ,answers: answer1,route: 'test2',),
//          '/test2': (context)=> TestScreen(question:question2 ,answers: answer1,route: 'test3',),
//          '/test3': (context)=> TestScreen(question:question2 ,answers: answer2,route: 'test4',),
//          '/test4': (context) =>
//              TestScreen(question: question2, answers: answer3, route: 'result',),
//          '/result': (context) => ResultScreen(),
//          '/analytic': (context) => AnalyticScreen(),
//          '/tut1': (context) => ContributorTut1(),
//          '/tut2': (context) => ContributorTut2(),
//          '/tut3': (context) => ContributorTut3(),
//          '/newTest': (context) => NewTest(),
//          '/testDetails': (context) => TestDetails(),
//          '/addQuestion': (context) => AddQuestion(),
//          '/addAnswer': (context) => AddAnswer(),
//          '/congrats': (context) => Congratulations(),
//          '/qstnList': (context) => QuestionList(),
//          '/qstnEdit': (context) => QuestionEditor(),
//          '/contributeProfile': (context) => ContributorProfile(),
//          '/testStats': (context) => TestStats(),
//          '/upskillTutorial': (context) => UpskillTutorialScreen(),
//        },
      ),
    );
  }
}
