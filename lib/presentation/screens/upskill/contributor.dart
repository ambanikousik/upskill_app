import 'package:flutter/material.dart';
import 'package:upskillapp/bloc/bloc.dart';
import 'package:upskillapp/presentation/presentation.dart';

class Contributor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContributorBloc, ContributorState>(
      // ignore: missing_return
      builder: (context, state) {
        if (state is ContributorTutorialState) {
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
              child: ContributorTutorial());
        }
        if (state is ContributorCreateTestState) {
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
              child: NewTest());
        }
        if (state is ContributorAddDetailsState) {
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
              child: TestDetails());
        }
        if (state is ContributorAddQuestionState) {
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
              child: AddQuestion());
        }
        if (state is ContributorAddAnswerState) {
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
              child: AddAnswer());
        }
        if (state is ContributorAddAnotherQuestionState) {
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
              child: Congratulations());
        }
        if (state is ContributorCongratulationsState) {
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
              child: Congratulations());
        }
        if (state is ContributorQuestionListState) {
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
              child: QuestionList());
        }
        if (state is ContributorEditTestState) {
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
              child: QuestionEditor());
        }
        if (state is ContributorProfileState) {
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
              child: ContributorProfile(
                contributorModel: state.contributorModel,));
        }
        if (state is ContributorTestDetailsState) {
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
              child: TestStats(testStatsModel: state.testStatsModel,));
        }
        if (state is ContributorLoadingState) {
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
        if (state is ContributorErrorState) {
          return Text(
            'Something went wrong!',
            style: TextStyle(color: Colors.red),
          );
        }
      },
    );
  }
}
