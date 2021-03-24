import 'package:flutter/material.dart';
import 'package:instgram/pages/login_page.dart';
import 'package:instgram/pages/splash_page.dart';
import 'package:instgram/pages/timeline_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      routes: <String, WidgetBuilder>{
        "/": (context) => SplashPage(),
        "/login": (context) => LoginPage(),
        "/timeline": (context) => TimelinePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}