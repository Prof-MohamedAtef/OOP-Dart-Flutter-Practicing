
import 'package:amit_training/assignment3/exercise1/shape.dart';

class Square extends Shape {
  late int _side;

  setSide(int side){
    this._side = side;
  }
  @override
  calculateArea() {
    var area =_side * _side;
    print("Area of Square is : $area");
  }

  @override
  calculatePerimeter() {
    var perimeter = _side * 4;
    print("Square Perimeter is : $perimeter");
  }
}
