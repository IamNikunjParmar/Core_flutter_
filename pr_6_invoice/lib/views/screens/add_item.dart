import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/utils/routes_utils.dart';
import 'package:untitled/views/Globals/globals.dart';

class Additems extends StatefulWidget {
  const Additems({Key? key}) : super(key: key);

  @override
  State<Additems> createState() => _AdditemsState();

}
class _AdditemsState extends State<Additems> {

int additem = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(31, 65, 106, 1),
        foregroundColor: Colors.white,
        title: const Text("Add Item"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Column(
            children:List.generate(additem, (index)  =>   Container(
              padding: EdgeInsets.all(20),
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Item ${index+1}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                      labelText: "Item Name",
                    ),
                    onChanged: (val) {
                      setState(() {
                        Globals.itemname[index]=val;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                      labelText: "Price",
                      prefixText: "₹",
                    ),
                    onChanged: (val){
                      setState(() {
                        Globals.Price[index]=val;

                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                      labelText: "Quantity",
                    ),
                    onChanged: (val){
                      setState(() {
                        Globals.Quantity[index]=val;


                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                      labelText: "Discount",
                    ),
                    onChanged: (val){
                      setState(() {
                        Globals.Discount[index]=val;
                      });
                    },
                  ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  // TextFormField(
                  //   keyboardType: TextInputType.number,
                  //   textInputAction: TextInputAction.done,
                  //   inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  //   decoration: InputDecoration(
                  //     labelStyle: TextStyle(
                  //       color: Colors.grey.shade600,
                  //     ),
                  //     labelText: "Total",
                  //     prefixText: "₹",
                  //   ),
                  //   onChanged: (val){
                  //     setState(() {
                  //      Globals. Total[index]= val;
                  //
                  //
                  //     });
                  //   },
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children:[
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            additem ++;

                          });
                        },
                        child:Text("Add item"),
                      ),
                    ],
                  ),

                ],
              ),
            ),).toList(),
          ),
        ),
      ),
    );
  }
}
