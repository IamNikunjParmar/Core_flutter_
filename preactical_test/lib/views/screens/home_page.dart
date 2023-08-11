import 'package:flutter/material.dart';

import '../../Utils/prod_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(218, 24, 94, 1),
        foregroundColor: Colors.white,
        elevation: 5,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Text("Create Attendace Sheet",
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),

          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(218, 24, 94, 1),
        onPressed: () =>
            Navigator.of(context).pushNamed(MyRoutes.attendaceStud),
        child: const Icon(Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
