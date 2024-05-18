import 'dart:io';

import 'package:amit_training/assignment3/exercise2/point.dart';
import 'package:amit_training/assignment3/exercise2/point_handler.dart';
import 'package:amit_training/assignment3/exercise2/rectangle.dart';
import 'package:amit_training/assignment3/exercise2/shape_type.dart';
import 'package:amit_training/assignment3/exercise2/square.dart';

void main(){
  var shapePoints = ShapePoints();

  print("Please Enter Four points!");
  print("Enter X coordinate of Point 1!");
  double? pointOneX = double.parse(stdin.readLineSync()!);

  print("Enter Y coordinate of Point 1!");
  double? pointOneY = double.parse(stdin.readLineSync()!);
  var pointOne = Point(pointOneX, pointOneY);
  print("Enter Point 2 Coordinates Bigger than Point 1!");
  print("Enter X coordinate of Point 2!");
  double? pointTwoX = double.parse(stdin.readLineSync()!);
  print("Enter Y coordinate of Point 2!");
  double? pointTwoY = double.parse(stdin.readLineSync()!);
  var pointTwo = Point(pointTwoX, pointTwoY);
  print("Enter Point 3 Coordinates Bigger than Point 2!");
  print("Enter X coordinate of Point 3!");
  double? pointThreeX = double.parse(stdin.readLineSync()!);
  print("Enter Y coordinate of Point 3!");
  double? pointThreeY = double.parse(stdin.readLineSync()!);
  var pointThree = Point(pointThreeX, pointThreeY);
  print("Enter Point 4 Coordinates Bigger than Point 3!");
  print("Enter X coordinate of Point 4!");
  double? pointFourX = double.parse(stdin.readLineSync()!);
  print("Enter Y coordinate of Point 4!");
  double? pointFourY = double.parse(stdin.readLineSync()!);
  var pointFour = Point(pointFourX, pointFourY);

  var dimensList = shapePoints.convertPointsToDimens(pointOne, pointTwo, pointThree, pointFour);

  ShapeType shapeType = shapePoints.detectShapeType(dimensList[0], dimensList[1], dimensList[2], dimensList[3]);

  if(shapeType == ShapeType.RECTANGLE){
    print("Layout is Rectangle");
    var rectangle = Rectangle();
    rectangle.setDimens(dimensList[0], dimensList[2]);
    rectangle.calculateArea();
    rectangle.calculatePerimeter();
  }else{
    print("Layout is Square");
    var square = Square();
    if(dimensList[0] == dimensList[2]){
      square.setSide(dimensList[0]);
      square.calculateArea();
      square.calculatePerimeter();
    }
  }
}