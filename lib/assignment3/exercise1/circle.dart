import 'package:amit_training/assignment3/exercise1/shape.dart';

class Circle extends Shape {
  late int _diameter;
  static const double bi = (22/7);

  setDiameter(int side){
    this._diameter = side;
  }
  @override
  calculateArea() {
    var area = bi * ( _diameter * _diameter);
    print("Area of Circle is : $area");
  }

  @override
  calculatePerimeter() {
    var perimeter = bi * _diameter * 2;
    print("Circle Perimeter is : $perimeter");
  }
}
