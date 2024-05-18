abstract class A{
  display();
}

abstract class C{
  displayName();
}

class B implements A, C{
  @override
  display() {
    print("Name is B");
  }

  @override
  displayName() {
    // TODO: implement displayName
    throw UnimplementedError();
  }

}