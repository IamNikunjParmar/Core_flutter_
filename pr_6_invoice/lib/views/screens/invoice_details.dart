import 'package:flutter/material.dart';

import '../../utils/routes_utils.dart';
import '../componets/my_backbutton.dart';

class InvoiceDetails extends StatefulWidget {
  const InvoiceDetails({Key? key}) : super(key: key);

  @override
  State<InvoiceDetails> createState() => _InvoiceDetailsState();
}

class _InvoiceDetailsState extends State<InvoiceDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(31, 65, 106, 1),
        foregroundColor: Colors.white,
        leading: myBackButton(),
        title: const Text("Invoice Details"),
        centerTitle: true,
      //   actions: [
      //     IconButton(onPressed: () {
      //       Navigator.of(context).pushNamed(Myroutes.pdfPage);
      //     },
      //       icon: Icon(Icons.picture_as_pdf_outlined),),
      //   ],
       ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Column(
              children: Myroutes.buildoptions
                  .map(
                    (e) => Card(
                      color: Color.fromRGBO(31, 65,106, 1),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset(e['icon'],height: 30, color: Colors.white,),

                        const SizedBox(
                          width: 20,
                        ),
                        Text(e['title'],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),

                        const Spacer(),
                        IconButton(
                          onPressed:()=>Navigator.of(context).pushNamed(e['name']) ,
                          icon: const Icon(Icons.arrow_forward_ios_outlined),color: Colors.white,
                        ),

                      ],
                    ),
                  ),
                ),
              ).toList(),
            ),
           const SizedBox(
             height: 380,
           ),
           ElevatedButton(
               onPressed: () {
                 Navigator.of(context).pushNamed(Myroutes.pdfPage);

           },
               style: ElevatedButton.styleFrom(
                 backgroundColor: Color(0xff1F416A),
               ),
               child: const Text("Generate Invoice Pdf",
               style: TextStyle(
                 color: Colors.white,
               ),
               ),
           ),
          ],
        ),
      ),
    );
  }
}


