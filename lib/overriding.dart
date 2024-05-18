class A{
  String? name;
  int? age;

  show(){
    return name;
  }

  show1(String x, int z){
    return age;
  }
}

class B extends A{
  String? color;

  @override
  show() {
    print(color);
    return super.show();
  }
  @override
  show1(String x, int z) {
    print(x);
    print(z);
    return super.show1(x, z);
  }
}

void main(){
  var obj = B();
  obj.color = "red";
  obj.age = 32;
  print(obj.show());
  obj.show1("Mohamed", 32);
}