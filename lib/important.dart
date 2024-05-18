import 'dart:ffi';
import 'dart:io';

void main() {
//   // List<String> strings = ["aaa", "bbb", "ccc"];
//   // print(strings[1]);
//
//   // var data = ["abcd", 34, "ef", false, 5.6, 'd'];
//   // print(data[2]);
//   // print(strings.length);
//   // print("length:" + strings[0]);
//   // print(data.length);
//   // print(data[0]);
//   //
//   //
//   // Map<String, Object> info = {
//   //   "name": "Mohamed Atef Abdallah",
//   //   "Mobile": 00201097555350,
//   //   "Job Title": 'Senior Android Developer',
//   //   "Gender": "Male",
//   //   "Military Service": true,
//   //   "Marital Status": false,
//   //   "Age": 30
//   // };
//   //
//   // print(info["Job Title"]);
//
//   // myList.add(12);
//   // print(myList);
//   //
//   // myList.addAll([22,44]);
//   // print(myList);
//   //
//   // myList.insert(0,[55, 66]);
//   // print(myList);
//   //
//   // myList.insertAll(0, [77, 88]);
//   // print(myList);
//
//   /*
//   Map Implementation
//    */
//
//   // Map<String, dynamic> myDynamicMap = {
//   //   "name": "Mohamed Atef",
//   //   "id" : 1,
//   //   "Job Title": " Flutter Developer"
//   // };
//   // print(myDynamicMap);
//   // myDynamicMap.update("Job Title", (value) => "Android Developer");
//   // print(myDynamicMap);
//   // myDynamicMap.addAll({"Gender":"Male"});
//   // print(myDynamicMap);
//   // print(myDynamicMap.isNotEmpty);
//
//   /*
//   List Implementation
//    */
//   //
//   // List<dynamic> myList= [0,"Mohamed", bool, 10, 10.5];
//   // print(myList.where((element) => element == "Ahmed"));
//   // print(myList.where((element) => false));
//   //
//   // print(myList.lastWhere((element) => element == bool));
//   // print(myList.lastIndexOf((element) => element == 10.5));
//   // print(myList.indexOf((element) => element == 10.5));
//   //
//   //
//   //
//   // print(myList);
//
//   /*
//   Set Implementation
//    */
//
//   // Set<String> set1 = {"Ahmed", "Mohamed", "Samy"};
//   // Set<String> set2 = {"Mostafa", "Mohamed", "Ismael"};
//   //
//   // print(set1.union(set2));
//   //
//   // print(set1.difference(set2));
//   //
//   // print(set1.intersection(set2));
//
//   /*
//   Post and prefix implementation
//    */
//   //
//   // int y,x;
//   // x = 0;
//   // y = ++x;
//   //
//   // print("Postfix|X=$x, Y=$y");
//   // x = y = 0;
//   // y = x++;
//   // print("Prefix|X=$x, Y=$y");
//
//   /*
//   Swapping implementation
//    */
//   /*
//   method 1
//    */
//   // int a = 5;
//   // int b = 6;
//   //
//   // int result = a + b;
//   // a = result - a;
//   // b = result - b;
//   // print(a);
//   // print(b);
//
//   /*
//   method 2
//    */
//   // int a = 5;
//   // int b = 6;
//   // swap(a, b);
//
//   // print("Hi, This is to calculate your Age after 100 years .. Press any key");
//   //
//   // stdin.readLineSync();
//   // print("How Old Are You?");
//   // double age = double.parse(stdin.readLineSync()!);
//   // double age_100 = age + 100;
//   // int age_int = age_100.toInt();
//   // print("Your age will be $age_int after 100 years");
//   // print("Where do u live?");
//   // String? city = stdin.readLineSync();
//   // print("I live in: $city ");
//   // print("What do you work?");
//   // String? job = stdin.readLineSync();
//   // print("I work as: $job ");
//   // print("We have different T-Shir sizes, Do u want to buy Any?");
//   // String? yesNo = stdin.readLineSync();
//   // switch(yesNo){
//   //   case "Yes" :
//   //     print("What's your Size ?");
//   //     double yesNo = double.parse(stdin.readLineSync()!);
//   //     print("T-Shirt Size is : $yesNo ");
//   //   case "No":
//   //     print("Press any key to close the program");
//   //     stdin.readLineSync();
//   //     print("App has ended");
//   // }
//   //
//   // print("Press any key to close the program");
//   // stdin.readLineSync();
//   // print("App has ended");
//
//   /*
//   Conditions
//    */
//
//   // int ahmed = 50;
//   // int success = 60 ;
//   //
//   // if(ahmed > success){
//   //   print("Ahmed Succeeded");
//   // }else{
//   //   print("Ahmed Failed");
//   // }
//
//   /*
//   task coffee
//    */
//   //
//   // print("Hi, Select your preferred drink .. Press any key");
//   //
//   // stdin.readLineSync();
//   // print("What do you prefer to drink?");
//   // print("For Coffee Enter 1");
//   // print("For Tea Enter 2");
//   // print("For Nescafe Enter 3");
//   // int enteredValue = int.parse(stdin.readLineSync()!);
//   // drinkSelctions(enteredValue);
//   //
//   // print("To return to the previous Menu click *");
//   // String? astris = stdin.readLineSync();
//   // // enteredValue = int.parse(stdin.readLineSync()!);
//   // if (astris == "*") {
//   //   print("What do you prefer to drink?");
//   //   print("For Coffee Enter 1");
//   //   print("For Tea Enter 2");
//   //   print("For Nescafe Enter 3");
//   // }
//   // enteredValue = int.parse(stdin.readLineSync()!);
//   // drinkSelctions(enteredValue);
//   // print("What's the time Now ?");
//   // int timing = int.parse(stdin.readLineSync()!);
//   // if (timing <= 10) {
//   //   print("Good Morning");
//   // } else if (timing <= 20) {
//   //   print("Good Day");
//   // } else {
//   //   print("Good Evening");
//   // }
//   //
//   // print("Press any key to close the program");
//   // stdin.readLineSync();
//   // print("App has ended");
//
//   /*
//   day 4
//   ternary operator impl
//   */
//   // int time = 10;
//   // String result = time<=12 ? "Good Morning" : time >=20 ? "Good Night" : "End";
//   // print(result);
//
//   /*
//   switch
//    */
//   // int weather = 30;
//   // switch(weather){
//   //   case 10 : {
//   //     print("Weather is Cold");
//   //     break;
//   //   }
//   //   case 40 : {
//   //     print("Weather is hot");
//   //     break;
//   //   }
//   //   case 30: {
//   //     print("Weather is normal");
//   //     break;
//   //   }
//   //   default : {
//   //     print("no case");
//   //   }
//   // }
//
//   /*
//   impl add fun
//    */
//   int z = addFun(5, 8);

  var x = multiply(3, 6);
  print(x);

  print(printName("Mohamed Atef"));
  print(printEvenNumbers(4));
  /*
  return factorial of number
   */
  print('Enter N');
  int N = int.parse(stdin.readLineSync()!);
  int result = 1;
  for (int i = 1; i <= N; i++) {
    result *= i;
  }

  print('Factorial of $N');
  print(result);

  //print(factorial(5));
}

int factorial(int k) {
  // TODO: Faster algorithm
  if (k < 0) {
    throw ArgumentError.value(k);
  }
  if (k == 0) {
    return 1;
  }
  var result = k;
  k--;
  while (k > 1) {
    result *= k;
    k--;
  }
  return result;
}

int addFun(int x, int y){
  return x + y;
}

double multiply(double x, double y){
  return x*y;
}

String printName(String name){
  return name;
}

int printEvenNumbers(int num){
  if(num%2==0){
    return num;
  }else return 0;
}



void drinkSelctions(int enteredValue) {
  if (enteredValue == 1) {
    print("Here is your Coffee");
  } else if (enteredValue == 2) {
    print("Here is your Tea");
  } else if (enteredValue == 3) {
    print("Here is your Nescafe");
  }
}
//
// void swap(int x, int y) {
//   int z;
//   z = x;
// /*Copying the first variable Address to the temporary variable*/
//   x = y;
// /*Copying the second variable Address to the first variable*/
//   y = z;
// /*Copying the temporary variable Address to the second variable*/
//   print(x);
//   print(y);
// }
