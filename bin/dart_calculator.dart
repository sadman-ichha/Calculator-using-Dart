import 'dart:io';

void main() {
  double number1, number2;
  String operator;
  var userInput = stdin.readLineSync()!;

  print('Give the first number:');
  number1 = double.parse(userInput);

  print('Give the second number:');
  number2 = double.parse(userInput);

  print('Enter the operator (+, -, *, /):');
  operator = userInput;

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
        print('Error is: Division by zero');
      } else {
        print('$number1 / $number2 = ${number1 / number2}');
      }
      break;
    default:
      print('Error: Invalid operator');
  }
}