import 'encapsulation.dart';

void main(){
  var x =  Car();
  x.setName("BMW");
  print(x.getName());
  x.setModel("E46");
  print(x.getModel());
}