class User{
  /*
  declare
  Field, Properties, Variables, Attributes
   */
  String name = "Mohamed";
  String? jobTitle;
  double? age;
  double? salary;

}

class Car {
  String? type;
  String? model;
  int? wheels;
  double? price;
  String? fuelType;
  bool? airbags;
  int? mpg;

  // Car(String type_, double price_) {
  //   this.type = type_;
  //   this.price = price_;
  // }

  Car();
  Car.x(this.type, this.price, this.wheels);
  // Car(this.type, this.price, this.wheels);

  void printName() {
    print(this.type);
  }

  void printWheels(){
    print(this.wheels);
  }

  double? printPrice() {
    return this.price;
  }
}



void main(){

  Car defaultConstructor = Car();
  defaultConstructor.printWheels();
  defaultConstructor.printName();
  defaultConstructor.printPrice();
  Car newCar = Car.x("Renault", 2.5, 4);
  newCar.printName();
  print(newCar.printPrice());
  newCar.printWheels();

  // User user1 = User();
  // user1.name = "Mohamed";
  // user1.jobTitle = "Sr. Android Developer";
  // user1.age = 31;
  // user1.salary = 25000;
  //
  // User user2 = User();
  // user2.name = "Ahmed";
  // user2.jobTitle = "Python Developer";
  // user2.age = 25;
  // user2.salary = 30000;
  //
  // Car car1 = Car();
  // car1.type = "Mercedes";
  // car1.model = "C3, 2020";
  // car1.price = 2000000;
  // car1.wheels = 4;
  // car1.fuelType = "electric";
  // car1.airbags = false;
  // car1.mpg = 50;
  //
  // Car car2 = Car();
  // car2.type = "BMW";
  // car2.model = "E46, 2015";
  // car2.price = 2000000;
  // car2.wheels = 4;
  // car1.fuelType = "diesel";
  // car2.airbags = true;
  // car2.mpg = 65;
}