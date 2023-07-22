import 'dart:io';

class Calculator {
  double num1, num2;

  Calculator(this.num1, this.num2);

  double add() => num1 + num2;

  double subtract() => num1 - num2;

  double multiply() => num1 * num2;

  double divide() {
    if (num2 == 0) {
      throw Exception("Cannot divide by zero");
    }
    return num1 / num2;
  }
}

void main() {
  print("Welcome to the calculator app!");

  while (true) {
    print("\nEnter the first number:");
    double num1 = double.parse(stdin.readLineSync()!);


    print("Enter the second number:");
    double num2 = double.parse(stdin.readLineSync()!);


    Calculator calc = Calculator(num1, num2);

    print("\nSelect an operation:");
    print("+. Addition");
    print("-. Subtraction");
    print(". Multiplication");
    print("/. Division");
    print("q. quit");

    var choice = stdin.readLineSync();

    try {
      switch (choice) {
        case '+':
          print("\n${calc.num1} + ${calc.num2} = ${calc.add()}");
          break;
        case '-':
          print("\n${calc.num1} - ${calc.num2} = ${calc.subtract()}");
          break;
        case '':
          print("\n${calc.num1} x ${calc.num2} = ${calc.multiply()}");
          break;
        case '/':
          print("\n${calc.num1} / ${calc.num2} = ${calc.divide()}");
          break;
        case'q':
          print("\nThank you for using the calculator app!");
          break;
        default:
          print("\nInvalid choice.");
      }
    } catch (e) {
      print("\nError occurred: ${e.toString()}");
    }
    if (choice == "q"){
      break;
    }

  }


}