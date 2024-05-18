mixin A {

  // cannot define constructor , hence, cannot define object
  // can add attributes, and methods
  // cannot be abstract
  // for using implement keyword, it wil implement all members in mixin
  String? name;
  displayName(){
    return name;
  }
}

mixin C {
  String? color;
  displayColor(){
    return color;
  }
}

class B with A, C {

}

abstract class R{
  displayColor();
}
class O implements R, C{
  // class implements an abstract class and a mixin
  @override
  String? color;

  @override
  displayColor() {
    // TODO: implement displayColor
    throw UnimplementedError();
  }

}
class Z{

}

class V extends Z with A{

}
/*
mixing/extending class and a mixing
 */
class AA{

}

mixin BB{

}

class CC extends AA with BB{

}
/*
extending from 2 mixin
 */
mixin AAA{

}
mixin BBB{}

class CCC with AAA, BBB{}

/*
implement mixin and abstract class
must implement all members in the mixin and the class if class and mixin are participating in the implements relation
 */
mixin AAAA{
  String? gender;
  displayGender(){
    return gender;
  }
}
abstract class BBBB{
  String? name;
  displayName(){
    return name;
  }
  display();
}
class CCCC implements BBBB, AAAA{
  // implements keyword implement all members whether it's concrete or has its definition
  @override
  String? gender;

  @override
  displayGender() {
    // TODO: implement displayGender
    throw UnimplementedError();
  }

  @override
  String? name;

  @override
  display() {
    // TODO: implement display
    throw UnimplementedError();
  }

  @override
  displayName() {
    // TODO: implement displayName
    throw UnimplementedError();
  }
}

class DDDD extends BBBB{
  // extends implement only abstract members
  @override
  display() {
    // TODO: implement display
    throw UnimplementedError();
  }

}
/*
note the difference between implements and extends
 */
class J implements BBBB{
  // implement all members
  @override
  String? name;

  @override
  display() {
    // TODO: implement display
    throw UnimplementedError();
  }

  @override
  displayName() {
    // TODO: implement displayName
    throw UnimplementedError();
  }
}

void main(){
  // var x = B();
  // x.d

  // var l = V();
  // l.

}