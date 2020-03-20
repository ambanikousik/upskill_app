import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:upskillapp/bloc/bloc.dart';
import 'package:upskillapp/data/data.dart';
import 'simple_bloc_delegate.dart';
import 'presentation/presentation.dart';
import 'repository/repositories.dart';
import 'package:http/http.dart' as http;

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();

  final UpskillRepository upskillRepository = UpskillRepository(
      upskillApiClient: UpskillApiClient(
        httpClient: http.Client(),
      ));

  runApp(MyApp(upskillRepository: upskillRepository,));
}

class MyApp extends StatelessWidget {

  final UpskillRepository upskillRepository;

  MyApp({Key key, @required this.upskillRepository})
      : assert(upskillRepository != null),
        super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UpskillBloc>(
          create: (BuildContext context) =>
              UpskillBloc(upskillRepository: upskillRepository),
        ),
        BlocProvider<ContributorBloc>(
          create: (BuildContext context) =>
              ContributorBloc(upskillRepository: upskillRepository),
        ),
        BlocProvider<TestBloc>(
          create: (BuildContext context) =>
              TestBloc(
                  userBloc: UserBloc(upskillRepository: upskillRepository)),
        ),
        BlocProvider<UserBloc>(
          create: (BuildContext context) =>
              UserBloc(upskillRepository: upskillRepository),
        ),
        BlocProvider<TimerBloc>(
          create: (BuildContext context) =>
              TimerBloc(ticker: Ticker()),
        ),
      ],
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
                    },
                    child: SurveyScreen());
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
                    },
                    child: DomainScreen(domainsList: state.domainsList,));
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
                    },
                    child: User());
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
                    },
                    child: Contributor());
              }
              if (state is UpskillLoading) {
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
                    },
                    child: LoadingIndicator());
              }

              if (state is UpskillError) {
                return Text(
                  'Something went wrong!',
                  style: TextStyle(color: Colors.red),
                );
              }
            }),
      ),
    );
  }
}
