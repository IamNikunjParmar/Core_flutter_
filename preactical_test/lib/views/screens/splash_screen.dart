import 'dart:async';

import 'package:flutter/material.dart';
import 'package:preactical_test/Utils/prod_utils.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  FlutterLogoStyle mystyle = FlutterLogoStyle.markOnly;

  changePage(){
    Future.delayed(Duration(milliseconds: 500),(){
      setState(() {
        mystyle = FlutterLogoStyle.horizontal;
      });
    });

    Timer.periodic(
        Duration(seconds: 4),
            (timer){
      Navigator.of(context).pushReplacementNamed(MyRoutes.home);

      timer.cancel();
    });
  }
  @override
  void initState() {
    super.initState();
    changePage();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 3,
              ),
             Image.asset("assets/images/Confirmed attendance.gif"),
              const Spacer(),
              const Spacer(),
              const CircularProgressIndicator(
                color: Color.fromRGBO(218, 24, 94, 1)
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
