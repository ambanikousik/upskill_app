import 'package:flutter/material.dart';
import 'package:upskillapp/bloc/bloc.dart';
import 'package:upskillapp/presentation/presentation.dart';


class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      // ignore: missing_return
      builder: (context, state) {
        if (state is SubdomainUserState) {
          return AnimatedSwitcher(
              switchOutCurve: Threshold(0),
              duration: Duration(milliseconds: 250),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 0.25),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              },
              child: SubdomainScreen(
                subDomainsList: state.subdomainsList,
              ));
        }
        if (state is TopicUserState) {
          return AnimatedSwitcher(
              switchOutCurve: Threshold(0),
              duration: Duration(milliseconds: 250),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 0.25),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              },
              child: TopicScreen(
                topicsList: state.topicsList,
              ));
        }
        if (state is TestUserState) {
          BlocProvider.of<TimerBloc>(context).add(
              Start(duration: state.test.limit));
          return AnimatedSwitcher(
            switchOutCurve: Threshold(0),
            duration: Duration(milliseconds: 250),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, 0.25),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            },
            child: TestScreen(
              test: state.test,
            ),
          );
        }
        if (state is ResultUserState) {
          return AnimatedSwitcher(
              switchOutCurve: Threshold(0),
              duration: Duration(milliseconds: 250),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 0.25),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              },
              child: ResultScreen(grade: state.grade,));
        }
        if (state is AnalysisUserState) {
          return AnimatedSwitcher(
              switchOutCurve: Threshold(0),
              duration: Duration(milliseconds: 250),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 0.25),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              },
              child: AnalyticScreen(resultStats: state.stats,));
        }

        if (state is LoginUserState) {
          return AnimatedSwitcher(
              switchOutCurve: Threshold(0),
              duration: Duration(milliseconds: 250),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 0.25),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              },
              child: SigningScreen());
        }

        if (state is SignUpUserState) {
          return AnimatedSwitcher(
              switchOutCurve: Threshold(0),
              duration: Duration(milliseconds: 250),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 0.25),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              },
              child: RegistrationScreen());
        }

        if (state is LoadingUserState) {
          return AnimatedSwitcher(
              switchOutCurve: Threshold(0),
              duration: Duration(milliseconds: 250),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 0.25),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              },
              child: LoadingIndicator());
        }

        if (state is ErrorUserState) {
          return Text(
            'Something went wrong!',
            style: TextStyle(color: Colors.red),
          );
        }

        if (state is SplashUserState) {
          return AnimatedSwitcher(
              switchOutCurve: Threshold(0),
              duration: Duration(milliseconds: 250),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 0.25),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              },
              child: UserSplashScreen());
        }
      },
    );
  }
}
