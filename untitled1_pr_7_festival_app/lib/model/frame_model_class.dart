

class Frame {

  final String frame;
  final String category;




  Frame({
    required this.frame,
    required this.category,
  });


  factory Frame.fromMap({required Map data}){
    return Frame(
      frame: data['frame'],
      category: data['category'],
    );
  }

}