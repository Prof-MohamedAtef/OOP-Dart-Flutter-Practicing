import 'package:amit_training/assignment3/exercise1/shape.dart';

class Rectangle extends Shape {
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
