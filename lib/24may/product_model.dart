class Products{
  String name ;
  String pic ;
  bool like;
  String? dis;

  Products({
    required this.name,
    required this.pic,
    required this.like,
    this.dis,
  });
}
List<Products>itemProduct =[
  Products(name: "Iphone", pic: "assets/image/mobile_iphone.jpeg", like: true),
  Products(name: "Samsung", pic: "assets/image/mobile_iphone_2.jpg",
      like: false ,
      dis: " Good quality "),
  Products(name: "Huawei ", pic: "assets/image/mobile_iphone.jpeg", like: true),

];