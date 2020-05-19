import 'package:flutter/material.dart';
import 'features/slack_clone/presentation/pages/home_page.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: 'SlackClone',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

