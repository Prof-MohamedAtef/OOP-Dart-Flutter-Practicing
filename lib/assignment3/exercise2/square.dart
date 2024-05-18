import 'package:amit_training/assignment3/exercise2/shape_calculator.dart';

class Square extends ShapeCalculator {
  late double _side;

  setSide(double side){
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
