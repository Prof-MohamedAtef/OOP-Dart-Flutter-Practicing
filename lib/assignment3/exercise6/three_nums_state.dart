import 'dart:io';

void main(){
  var number = 0;
  var list = [];
  print("Please enter number 1!");
  number = int.parse(stdin.readLineSync()!);
  list.add(number);
  print("Please enter number 2!");
  number = int.parse(stdin.readLineSync()!);
  list.add(number);
  print("Please enter number 3!");
  number = int.parse(stdin.readLineSync()!);
  list.add(number);
  if(list[0] < list[1] && list[1] < list[2]){
    print("increasing");
  }else if(list[0]> list[1] && list[1] > list[2]){
    print("decreasing");
  }else{
    print("Neither increasing or decreasing order");
  }
}