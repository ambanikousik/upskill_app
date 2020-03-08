import 'package:flutter/material.dart';
import 'presentation/presentation.dart';

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
      },
    );
  }
}
