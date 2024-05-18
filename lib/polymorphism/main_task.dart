abstract class Task{
  int? _age;
  taskName();
  taskAge(int age);
}

class SubTask extends Task{
  /*
  polymorphism return super function / update on the old implementation of the method in the Base class
  abstract method define new implementation to the override method
  without affecting the implemented method in the Base class
  لو الفنكشن كانت ابستراكت او مش ابستراكات يعني لها تنفيذ
  في ال كلاس الاب و عملت منها نسخة اوفرايد و لكن عملت ابديت علي الموجود فيها اصلا
  هنا دي تبقي plymorphism
  لكن
  لو كان مفيش تعديل اتعمل علي الفنكشن دي
  هنا ده يبقي  abstraction
   */



  @override
  taskAge(int age) {
    super._age = age;
  }

  getAge(){
    return super._age;
  }

  @override
  taskName() {
    // TODO: implement taskName
    throw UnimplementedError();
  }
}