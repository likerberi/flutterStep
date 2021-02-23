import 'package:amplify/login_page.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'sign_up_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cracy',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Navigator(
          pages: [
            MaterialPage(child: LoginPage()),
            MaterialPage(child: SignUpPage()),
          ],
          onPopPage: (route, result) => route.didPop(result),
        ));
  }
}
