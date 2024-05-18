class Home {
  final String? name;
  final String? address;
  final int? numberOfRooms;

  const Home(this.name, this.address, this.numberOfRooms);

  display() {
    print("name: $name & address: $address & number of Rooms: $numberOfRooms");
  }


}

class User {
  String? name;
  double? age;
  int? id;

  // User(); // default constructor

  User(this.name, this.age, this.id); // Parameterized constructor

  User.A(this.name, this.age, this.id); // Named Constructor


  // factory User(){
  //    return data
  // }

  show() {
    print("your age is :$age");
  }

  String? display() {
    return name;
  }

}

/*
Const Constructor Implementation
// must have final fields
 */
class Animal {
  final String? name;
  final int id;

  const Animal({this.name, required this.id});
}

class Boy {
  final String? name;
  int id;

  Boy(this.name, this.id);
}

void main() {
  // const Home home = Home("My Home", "Cairo st", 3);
  // const Home home2 = Home("My Home 2", "Massaeed st", 4);
  // print(identical(home, home2));
  // home.display();

  /*
  User implementation
   */


  // var user = User("Mohamed", 32, 1);
  // print(user.display());
  // user.show();
  //
  // var user2 = User("Ahmed", 33, 2);
  // print(user2.display());
  // user2.show();

  /*
  Const constructor Impl
   */

  // const Animal a1 = Animal(name: "Dog", id: 1);
  // const Animal a2 = Animal(name: "Dog", id: 1);
  // print(identical(a1, a2));
  //
  // Boy boy = Boy("Boy 2", 1);
  // Boy boy2 = Boy("Boy 1", 1);
  // print(identical(boy, boy2));

  /*
  applying static members
   */

  A.id = 1;
  print(A.show());

}


/*
 applying static members
 */

class A{
  static int? id;
  String? name;
  A(this.name);
  static show(){
    return id;
  }
}