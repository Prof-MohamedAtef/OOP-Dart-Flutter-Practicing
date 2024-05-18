/*
Sample of the hierarical inheritance
 */

class Mobile { // Super class
  String? name;
  int? storage;
  int? camera;
  String? os;

  Mobile({this.os, this.storage, this.camera, this.name});
}

class Iphone14 extends Mobile { // child class
  String? version;

  Iphone14({super.os, super.storage, super.camera, super.name, this.version});
  show(){
    print(os);
    print(version);
    print(camera);
  }
}
class Iphone13 extends Mobile {
  Iphone13({super.os, super.storage, super.camera, super.name});
}

void main() {
  var x = Iphone14(name: "14", storage: 128, camera: 3, os: "ios", version: "20");
  // x.os = "IOS-Android";
  // x.camera = 4;
  // x.version = "18";
  x.show();
  var z = Iphone13(name: "13", storage: 256, camera: 4, os: "ios", );

}

/*
Hirarical Inheritance
 */

class A{

}

class B extends A{

}

class C extends A{

}

/*
Multiple Inheritance
 */

class Z{

}

class K{

}

// class L extends Z, K{  // multiple inheritance is not supported
//
// }