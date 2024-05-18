abstract class ShapeCalculator{
  double? _width;
  double? _height;

  setDimens(double width, double height) {
    this._width = width;
    this._height = height;
  }

  setBase(double base, double height){
    this._width = base;
    this._height = height;
  }

  getBase(){
    return this._width;
  }

  getWidth(){
    return this._width;
  }

  getHeight(){
    return this._height;
  }
  calculateArea();
  calculatePerimeter();
}