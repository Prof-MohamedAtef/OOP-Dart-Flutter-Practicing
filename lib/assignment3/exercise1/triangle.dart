import 'package:amit_training/assignment3/exercise1/shape.dart';

class Triangle extends Shape {
  late int _side;
  setSide(int side){
    this._side = side;
  }
  @override
  calculateArea() {
    var base = getBase();
    var height = getHeight();
    var area = 0.5 * base * height;
    print("Area of Triangle is : $area");
  }

  @override
  calculatePerimeter() {
    var perimeter = (2 * this._side) + getBase();
    print("Triangle Perimeter is : $perimeter");
  }
}
