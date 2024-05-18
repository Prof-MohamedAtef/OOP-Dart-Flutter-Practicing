abstract class Shape {
  int? _width;
  int? _height;

  setDimens(int width, int height) {
    this._width = width;
    this._height = height;
  }

  setBase(int base, int height){
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

  calculatePerimeter();

  calculateArea();
}
