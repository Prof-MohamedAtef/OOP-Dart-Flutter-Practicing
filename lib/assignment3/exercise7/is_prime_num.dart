import 'dart:io';

void main(){
  var number = 0;
  print("Please enter a positive number!");
  number = int.parse(stdin.readLineSync()!);
  while(number < 0){
    print("Please enter a positive number!");
    number = int.parse(stdin.readLineSync()!);
  }
  if (isPrime(number)) {
    print('$number is a prime number.');
  } else {
    print('$number is not a prime number.');
  }
}

bool isPrime(N) {
  for (var i = 2; i <= N / i; ++i) {
    if (N % i == 0) {
      return false;
    }
  }
  return true;
}