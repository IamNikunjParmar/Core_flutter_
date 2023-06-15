
import 'package:appmania_pr_4/views/screens/cart_page.dart';
import 'package:appmania_pr_4/views/screens/details_page.dart';
import 'package:appmania_pr_4/views/screens/home_page.dart';
import 'package:flutter/material.dart';

import 'Utils/route_utils.dart';

void main(){
  runApp(
    const Appmania(),
  );
}

class Appmania extends StatelessWidget {
  const Appmania({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.home:(context) => const Homepage(),
        MyRoutes.detailPage:(context) => const DetailsPage(),
       MyRoutes.cartPage:(context) => const CartPage(),
      },

    );
  }
}

