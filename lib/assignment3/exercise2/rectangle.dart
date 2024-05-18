import 'package:amit_training/assignment3/exercise2/shape_calculator.dart';

class Rectangle extends ShapeCalculator {
  @override
  calculateArea() {
    var width = getWidth();
    var height = getHeight();
    var area = width * height;
    print("Area of Rectangle is : $area");
  }

  @override
  calculatePerimeter() {
    var perimeter = (getWidth() + getHeight()) * 2;
    print("Rectangle Perimeter is : $perimeter");
  }
}