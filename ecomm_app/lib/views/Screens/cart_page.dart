
import 'package:ecomm_app/color_utils.dart';
import 'package:flutter/material.dart';


class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart page"),
        centerTitle: true,
        backgroundColor: mybg,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.black),
        ),
        actions: [Icon(Icons.home),
        SizedBox(
          width: 10,
        ),

        ],
      ),
    );
  }
}
