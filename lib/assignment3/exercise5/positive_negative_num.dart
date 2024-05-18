import 'dart:io';

void main(){
  print("Please enter number!");
  int number = int.parse(stdin.readLineSync()!);
  if(number > 0){
    print("Positive number");
  }else{
    print("Negative number");
  }
}