import 'package:amit_training/assignment3/exercise2/point.dart';
import 'package:amit_training/assignment3/exercise2/shape_type.dart';

abstract class Shape {
  List convertPointsToDimens(Point point1, Point point2, Point point3, Point point4);

  ShapeType detectShapeType(double? sideDownWidth, double? sideUpperWidth, double? sideLeftHeight, double? sideRightHeight);
}