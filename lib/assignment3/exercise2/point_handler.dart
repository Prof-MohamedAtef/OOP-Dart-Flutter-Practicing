import 'package:amit_training/assignment3/exercise2/point.dart';
import 'package:amit_training/assignment3/exercise2/shape.dart';
import 'package:amit_training/assignment3/exercise2/shape_type.dart';

class ShapePoints extends Shape {
  @override
  ShapeType detectShapeType(double? sideDownWidth, double? sideUpperWidth,
      double? sideLeftHeight, double? sideRightHeight) {
    if (sideUpperWidth == sideLeftHeight &&
        sideDownWidth == sideRightHeight &&
        sideLeftHeight == sideRightHeight)
      return ShapeType.SQUARE;
    else if (sideUpperWidth == sideDownWidth &&
        sideLeftHeight == sideRightHeight &&
        sideUpperWidth != sideLeftHeight)
      return ShapeType.RECTANGLE;
    else
      return ShapeType.UN_DEFINED;
  }

  @override
  List convertPointsToDimens(
      Point point1, Point point2, Point point3, Point point4) {
    var sideDownWidth = point3.getPointX() - point4.getPointX();
    var sideUpperWidth = point2.getPointX() - point1.getPointX();
    var sideLeftHeight = point4.getPointY() - point1.getPointY();
    var sideRightHeight = point3.getPointY() - point2.getPointY();
    var dimensList = [];
    dimensList.add(sideDownWidth);
    dimensList.add(sideUpperWidth);
    dimensList.add(sideLeftHeight);
    dimensList.add(sideRightHeight);
    return dimensList;
  }
}