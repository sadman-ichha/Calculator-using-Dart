import 'dart:io';

void main() {
  double number1, number2;
  String operator;

  print('Welcome to the Dart Calculator.\n');
  
  print('Give the first number:');
  number1 = double.parse(stdin.readLineSync()!);

  print('Give the second number:');
  number2 = double.parse(stdin.readLineSync()!);

  print('Enter the operator (+, -, *, /):');
  operator = stdin.readLineSync()!;

  switch (operator) {
    case '+':
      print('$number1 + $number2 = ${number1 + number2}');
      break;
    case '-':
      print('$number1 - $number2 = ${number1 - number2}');
      break;
    case '*':
      print('$number1 * $number2 = ${number1 * number2}');
      break;
    case '/':
      if (number2 == 0) {
        print('Error is: Integer Division by Zero Exception');
      } else {
        print('$number1 / $number2 = ${number1 / number2}');
      }
      break;
    default:
      print('Error: Invalid operator');
  }
}
