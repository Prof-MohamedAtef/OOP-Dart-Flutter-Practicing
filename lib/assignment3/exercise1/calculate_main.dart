import 'package:amit_training/assignment3/exercise1/circle.dart';
import 'package:amit_training/assignment3/exercise1/rectangle.dart';
import 'package:amit_training/assignment3/exercise1/square.dart';
import 'package:amit_training/assignment3/exercise1/triangle.dart';
void main(){
  var rectangle = Rectangle();
  rectangle.setDimens(6, 3);
  rectangle.calculateArea();
  rectangle.calculatePerimeter();

  var triangle = Triangle();
  triangle.setBase(6, 3);
  triangle.calculateArea();
  triangle.setSide(8);
  triangle.calculatePerimeter();

  var square = Square();
  square.setSide(5);
  square.calculateArea();
  square.calculatePerimeter();

  var circle = Circle();
  circle.setDiameter(6);
  circle.calculatePerimeter();
  circle.calculateArea();
}