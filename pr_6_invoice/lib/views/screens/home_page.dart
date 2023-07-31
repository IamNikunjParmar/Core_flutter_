import 'package:flutter/material.dart';



import '../../utils/routes_utils.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(31, 65, 106, 1),
        foregroundColor: Colors.white,

      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/icons/invoice_Info.png"),
              height: 90,
              color: Colors.grey,),

            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text("Click on the add button to Create an Invoice",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey.shade900,
                  fontWeight: FontWeight.w600,
                ),

              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(31, 65, 106, 1),
        onPressed: () =>
            Navigator.of(context).pushNamed(Myroutes.invoicedetails),
        child: const Icon(Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
