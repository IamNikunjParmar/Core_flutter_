

import 'package:flutter/material.dart';
import 'package:pr_5_timer/utils/route_utils.dart';
import 'package:pr_5_timer/views/screens/home_page.dart';

void main(){
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        MyRoutes.home:(context)=> HomePage(),
      },
    );
  }
}
