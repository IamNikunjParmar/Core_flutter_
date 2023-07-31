import 'package:flutter/material.dart';

import '../Globals/globals.dart';
import '../componets/my_backbutton.dart';
class InvoiceInfo extends StatefulWidget {
  const InvoiceInfo({Key? key}) : super(key: key);

  @override
  State<InvoiceInfo> createState() => _InvoiceInfoState();
}


class _InvoiceInfoState extends State<InvoiceInfo> {

  GlobalKey<FormState> formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: myBackButton(),
        title: Text("Invoice Information"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(31, 65, 106, 1),
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Container(
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formkey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Invoice Number",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(31, 65, 106, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(

                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: " Inv0002",
                      labelText:  "Invoice Number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (val) {

                      if(val!.isEmpty)
                        {
                          return "Please Enter Number";
                        }
                      else
                        {
                          return null ;
                        }


                    },
                    onChanged: (val){
                      setState(() {
                        Globals.invoicenumber = val ;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text("Date",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(31, 65, 106, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.datetime,


                    decoration: InputDecoration(
                      hintText: " DD/MM/YYYY",
                      labelText:  "Enter Date",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (val) {

                      if(val!.isEmpty)
                      {
                        return "Please Enter Date";
                      }
                      else
                      {
                        return null ;
                      }


                    },
                    onChanged: (val){
                      setState(() {
                        Globals.invoicedate = val ;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  const Text(" Due Date",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(31, 65, 106, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.datetime,

                    decoration: InputDecoration(
                      hintText: " DD/MM/YYYY",
                      labelText:  "Enter Date",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (val) {

                      if(val!.isEmpty)
                      {
                        return "Please Enter Date";
                      }
                      else
                      {
                        return null ;
                      }


                    },
                    onChanged: (val){
                      setState(() {
                        Globals.invoiceduedate = val ;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        bool validated = formkey.currentState!.validate();
                        setState(() {

                          if(validated)
                          {
                            formkey.currentState!.save();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text("Successfully Saved"),
                                backgroundColor: Colors.green,
                                behavior: SnackBarBehavior.floating,
                                duration: Duration(
                                  seconds: 5,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                margin: EdgeInsets.all(25),
                                dismissDirection: DismissDirection.horizontal,
                                action: SnackBarAction(
                                  label: "ok",
                                  textColor: Colors.white,
                                  onPressed: (){

                                  },
                                ),
                              ),
                            );
                          }
                          else
                          {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text("Failed to Details"),
                                backgroundColor: Colors.red,
                                behavior: SnackBarBehavior.floating,
                                duration: Duration(
                                  seconds: 5,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                margin: EdgeInsets.all(25),
                                dismissDirection: DismissDirection.horizontal,
                                action: SnackBarAction(
                                  label: "ok",
                                  textColor: Colors.white,
                                  onPressed: (){},
                                ),
                              ),
                            );
                          }
                        });
                      },

                      style: ElevatedButton.styleFrom(primary: Color.fromRGBO(31, 65, 106, 1)),
                      child: Text("Submit",
                        style: TextStyle(
                          color: Colors.white,
                        ),

                      ),
                    ),
                  ),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

