import 'package:appmania_pr_4/Utils/color_utils.dart';
import 'package:flutter/material.dart';

import '../../Utils/product_utils.dart';
import '../../Utils/route_utils.dart';





class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double totalPrice = 0;

  @override
  void initState() {
    super.initState();

    cartItems.forEach((element) {
      totalPrice += element['price'];
    });
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
                     Navigator.of(context).pop();
                 },
      child: Icon(Icons.arrow_back_ios_new_rounded),
    ),
        title: const Text("Cart Page"),
        centerTitle: true,
        backgroundColor: mybg,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(
                right: 15
            ),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamedAndRemoveUntil(MyRoutes.home, (route) => false);
              },
              child: Icon(
                  Icons.home
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: cartItems
                    .map(
                      (e) => Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          e['thumbnail'],
                          height: h * 0.15,
                          width: h * 0.15,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: h * 0.15,
                          padding: const EdgeInsets.all(8),
                          child: Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e['title'],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 30,),
                              Text(
                                  "\$ ${e['price']}",
                                  style: TextStyle(
                                      fontSize: 16
                                  )
                              ),
                              Spacer(),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    totalPrice -= e['price'];
                                    cartItems.remove(e);
                                  });
                                },
                                child: Text(
                                  "DELETE",
                                  style: TextStyle(
                                    color: Colors.brown,
                                    decoration: TextDecoration.underline,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                    .toList(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: h * 0.1,
              color: Colors.brown,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total amount: ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    "\$ $totalPrice",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: mybg,
    );
  }
}