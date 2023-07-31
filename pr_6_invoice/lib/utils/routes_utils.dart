
class Myroutes {

  static String home = "/";

  static String invoicedetails = 'Invoice_details';



  static String pdfPage = "pdf_Page";

  static String splashScreen = 'splash_screen';

  static String iconpath = 'assets/icons/';

  static List<Map<String, dynamic>> buildoptions = [

    {
      'name': 'business_info',
      'title': 'Business Info',
      'icon': "${iconpath}resume.png",
    },
    {
      'name': 'invoice_info',
      'title': 'Invoice Info',
      'icon': "${iconpath}invoice_Info.png",
    },

    {
      'name': 'client_details',
      'title': 'Client Details',
      'icon': "${iconpath}account.png",
    },
    {
      'name': 'add_items',
      'title': 'Add Items',
      'icon': "${iconpath}queue.png",
    },







  ];
}