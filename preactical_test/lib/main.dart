import 'package:flutter/material.dart';
import 'package:preactical_test/Utils/prod_utils.dart';
import 'package:preactical_test/views/screens/attendace_stud.dart';
import 'package:preactical_test/views/screens/home_page.dart';
import 'package:preactical_test/views/screens/pdf_page.dart';
import 'package:preactical_test/views/screens/splash_screen.dart';

void main (){
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: MyRoutes.splashscreen,
      routes: {
        MyRoutes.home:(context)=> const HomePage(),
        MyRoutes.splashscreen:(context)=> const SplashScreen(),
        MyRoutes.attendaceStud:(context)=> const AttendaceList(),
        MyRoutes.pdfpage:(context)=> const PdfPage(),
      },
    );
  }
}

