
import 'package:flutter/material.dart';
//import 'package:stopwatch/src/pages/homePage.dart';
import 'package:stopwatch/src/pages/stopwatch_page.dart';

class MyApp extends StatelessWidget {
 // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child:StopwatchPage(),
        )
       );
  }
}
