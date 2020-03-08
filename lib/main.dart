import 'package:flutter/material.dart';
import 'presentation/presentation.dart';
import 'data/data.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Upskill',
      initialRoute: '/',
      routes: {
        '/': (context)=> SplashScreen(),
        '/opening': (context)=> OpeningScreen(),
        '/signin': (context)=> SigningScreen(),
        '/survey': (context)=> SurveyScreen(),
        '/domain': (context)=> DomainScreen(),
        '/subdomain': (context)=> SubdomainScreen(),
        '/topic': (context)=> TopicScreen(),
        '/test1': (context)=> TestScreen(question:question1 ,answers: answer1,route: 'test2',),
        '/test2': (context)=> TestScreen(question:question2 ,answers: answer1,route: 'test3',),
        '/test3': (context)=> TestScreen(question:question2 ,answers: answer2,route: 'test4',),
        '/test4': (context)=> TestScreen(question:question2 ,answers: answer3,route: 'test1',),
      },
    );
  }
}
