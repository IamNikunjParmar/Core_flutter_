import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../Globals/globals.dart';
import '../componets/my_backbutton.dart';



class PdfPage extends StatefulWidget {
  const PdfPage({Key? key}) : super(key: key);

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {



  FutureOr<Uint8List>generatePDf()async{
    pw.Document pdf = pw.Document();



   pdf.addPage(
     pw.Page(
       margin: pw.EdgeInsets.zero,
       build: (pw.Context context)=>pw.Stack(
         children: [
           pw.Divider(
             height: 10,
             thickness: 25,
             color: PdfColor.fromHex("1F416AFF"),
           ),
           pw.SizedBox(
             height: 15,
           ),
           pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
             children: [
               pw.SizedBox(
                 height: 30,
               ),
               pw.Text(
                 "INVOICE TAX",
                 style: pw.TextStyle(
                   fontSize: 20,
                   fontWeight: pw.FontWeight.bold,
                   color: PdfColors.black,
                 ),
               ),
               pw.SizedBox(
                 height: 10,
               ),
               // pw.SizedBox(
               //   height: 15,
               // ),//Business Logo
               pw.Row(
                 children: [
                   pw.Container(
                     margin: pw.EdgeInsets.only(top: 7,left: 4),
                     height: 80,
                     width: 80,
                     alignment: pw.Alignment.center,
                     decoration: pw.BoxDecoration(
                       border: pw.Border.all(
                         color: PdfColors.black,
                         width: 1,
                       ),

                       // image: pw.DecorationImage(
                       //   fit: pw.BoxFit.cover,
                       //   image: pw.MemoryImage(
                       //     File(Globals.image!.path).readAsBytesSync(),
                       //   ),
                       // ),
                     ),
                   ),
                   pw.SizedBox(
                     width: 150,
                   ),
                   pw.SizedBox(
                     height: 15,
                   ),//BUSINESS DETAILS
                   pw.RichText(
                     text: pw.TextSpan(
                       children: [
                         pw.TextSpan(
                           text: "Business Name : ",
                           style: pw.TextStyle(
                             fontSize: 15,
                             fontWeight: pw.FontWeight.bold,
                           ),
                         ),
                         pw.TextSpan(
                           text: "${Globals.Businessname}\n",
                           style: pw.TextStyle(
                             fontSize: 16,
                           ),
                         ),
                         pw.TextSpan(
                           text: "Invoice Number : ",
                           style: pw.TextStyle(
                             fontSize: 15,
                             fontWeight: pw.FontWeight.bold,
                           ),
                         ),
                         pw.TextSpan(
                           text: "${Globals.invoicenumber}\n",
                           style: pw.TextStyle(
                             fontSize: 16,
                           ),
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
               pw.SizedBox(
                 height: 15,
               ),//Owner DETAILS
               pw.Row(
                 crossAxisAlignment: pw.CrossAxisAlignment.start,
                 children: [
                   pw.RichText(
                     text: pw.TextSpan(
                       children: [
                         pw.TextSpan(
                           text: "Owner Name\n",
                           style: pw.TextStyle(
                             fontSize: 15,
                             fontWeight: pw.FontWeight.bold,
                           ),
                         ),
                         pw.TextSpan(
                           text: "${Globals.ownername}\n",
                           style: pw.TextStyle(
                             fontSize: 14,

                           ),
                         ),
                         pw.TextSpan(
                           text: "${Globals.email}\n ",
                           style: pw.TextStyle(
                             fontSize: 14,

                           ),
                         ),
                         pw.TextSpan(
                           text: "${Globals.number}\n ",
                           style: pw.TextStyle(
                             fontSize: 14,

                           ),
                         ),
                         pw.TextSpan(
                           text: "${Globals.address}\n",
                           style: pw.TextStyle(
                             fontSize: 14,

                           ),
                         ),
                       ],
                     ),
                   ),
                       pw.SizedBox(
                         width: 100,
                       ),
                       // pw.Text("Bill To",
                       //   style: pw.TextStyle(
                       //     fontSize: 18,
                       //     fontWeight: pw.FontWeight.bold,
                       //   ),
                       // ),//Bill To
                   pw.Column(
                     children: [
                       pw.RichText(
                         text: pw.TextSpan(
                           children: [
                             pw.TextSpan(
                               text: "BILL To\n",
                               style: pw.TextStyle(
                                 fontSize: 15,
                                 fontWeight: pw.FontWeight.bold,
                               ),
                             ),
                             pw.TextSpan(
                               text: "${Globals.clientname}\n",
                               style: pw.TextStyle(
                                 fontSize: 14,

                               ),
                             ),
                             pw.TextSpan(
                               text: "${Globals.clientemail}\n ",
                               style: pw.TextStyle(
                                 fontSize: 14,

                               ),
                             ),
                             pw.TextSpan(
                               text: "${Globals.clientnumber}\n ",
                               style: pw.TextStyle(
                                 fontSize: 14,

                               ),
                             ),
                             pw.TextSpan(
                               text: "${Globals.clientFax}\n",
                               style: pw.TextStyle(
                                 fontSize: 14,

                               ),
                             ),
                             pw.TextSpan(
                               text: "${Globals.clientaddres}\n",
                               style: pw.TextStyle(
                                 fontSize: 14,

                               ),
                             ),
                           ],
                         ),
                       ),

                     ],
                   ),

                 ],
               ),//ADD  ITEMS LIST
               pw.SizedBox(
                 height: 30,
               ),
               pw.Container(
                 height: 23,
                 width: 600,
                 alignment: pw.Alignment.center,
                 padding: pw.EdgeInsets.all(5),
                 decoration: pw.BoxDecoration(
                   color: PdfColor.fromHex("1F416AFF"),
                 ),
                 child: pw.Row(
                   children: [
                     pw.Text("DESCRIPTION",
                     style: pw.TextStyle(
                       color: PdfColors.white,
                       fontSize: 12,
                       fontWeight: pw.FontWeight.bold,
                     ),
                     ),
                     pw.SizedBox(
                       width: 150,
                     ),
                     pw.Text("PRICE",
                       style: pw.TextStyle(
                         color: PdfColors.white,
                         fontSize: 12,
                         fontWeight: pw.FontWeight.bold,
                       ),
                     ),
                     pw.SizedBox(
                       width: 60,
                     ),
                     pw.Text("QTY",
                       style: pw.TextStyle(
                         color: PdfColors.white,
                         fontSize: 12,
                         fontWeight: pw.FontWeight.bold,
                       ),
                     ),
                     pw.SizedBox(
                       width: 60,
                     ),
                     pw.Text("DISCOUNT",
                       style: pw.TextStyle(
                         color: PdfColors.white,
                         fontSize: 12,
                         fontWeight: pw.FontWeight.bold,
                       ),
                     ),
                     pw.SizedBox(
                       width: 60,
                     ),
                     pw.Text("TOTAL",
                       style: pw.TextStyle(
                         color: PdfColors.white,
                         fontSize: 12,
                         fontWeight: pw.FontWeight.bold,
                       ),
                     ),
                   ],
                 ),
               ),
               pw.SizedBox(
                 height: 10,
               ),
               pw.Container(
                 height: 23,
                 width: 600,
                 padding: pw.EdgeInsets.all(5),
                 alignment: pw.Alignment.center,
                 decoration: pw.BoxDecoration(
                   color: PdfColor.fromHex("97A8D3FF"),
                 ),
                child: pw.Column(
                  children: List.generate(Globals.itemname.length, (index) => pw.Row(
                    children: [

                      // pw.Text("${Globals.itemname[index]}",
                      //   style: pw.TextStyle(
                      //     color: PdfColors.white,
                      //     fontSize: 12,
                      //     fontWeight: pw.FontWeight.bold,
                      //   ),
                      // ),
                      // pw.SizedBox(
                      //   width: 150,
                      // ),

                    ],
                  ),),
                ),
               ),

             ],
           ),


         ],
       ),
     ),
    );
    return pdf.save();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: myBackButton(),
        title: const Text("PDF Page"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(31, 65, 106, 1),
        foregroundColor: Colors.white,
      ),
      body: PdfPreview(
        build: (format)=> generatePDf(),
      ),

    );
  }
}
