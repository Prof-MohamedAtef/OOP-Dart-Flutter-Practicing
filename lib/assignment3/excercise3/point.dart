class Point{
  double? _x;
  double? _y;
  Point(this._x, this._y);
  
  move(double x, double y){
    this._x = x;
    this._y = y;
  }

  display(){
    print("New coordinates: x=$_x , and y=$_y");
  }
}