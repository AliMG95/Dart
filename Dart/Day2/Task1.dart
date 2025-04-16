import 'dart:math';

// Task 1: BMI Calculator
String calculateBMI(double weight, double height) {
  if (weight < 30 || weight > 200 || height < 1.0 || height > 2.5) {
    return "Invalid input. Ensure weight is between 30-200 kg and height is between 1.0-2.5 m.";
  }

  double bmi = weight / pow(height, 2);
  bmi = double.parse(bmi.toStringAsFixed(2)); 

  String category;
  if (bmi < 18.5) {
    category = "Underweight";
  } else if (bmi < 25) {
    category = "Normal";
  } else if (bmi < 30) {
    category = "Overweight";
  } else {
    category = "Obese";
  }

  return "Your BMI is: $bmi\nCategory: $category";
}

// Task 2: Student Grades Average
String calculateAverage(List<int> grades) {
  if (grades.isEmpty) return "No grades provided.";
  double average = grades.reduce((a, b) => a + b) / grades.length;
  String result = average >= 60 ? "Passed" : "Failed";
  return "Average grade: ${average.toStringAsFixed(2)}\n$result";
}

// Task 3: Simple ATM Simulation
String atmSimulation(double initialBalance, int operation, [double amount = 0.0]) {
  double balance = initialBalance;
  switch (operation) {
    case 1:
      return "Current balance: \$${balance.toStringAsFixed(2)}";
    case 2:
      balance += amount;
      return "Deposited successfully. New balance: \$${balance.toStringAsFixed(2)}";
    case 3:
      if (amount > balance) {
        return "Error: Insufficient balance.";
      }
      balance -= amount;
      return "Withdrawn successfully. New balance: \$${balance.toStringAsFixed(2)}";
    default:
      return "Invalid operation.";
  }
}

// Task 4: Palindrome Checker
bool isPalindrome(String word) {
  String reversed = word.split('').reversed.join('');
  return word == reversed;
}

// Task 5: Shopping Cart Total with Discount
String calculateCartTotal(Map<String, double> cart, [double discount = 0.0]) {
  double total = cart.values.reduce((a, b) => a + b);
  double discountedTotal = total * (1 - discount);
  return "Cart total: \$${total.toStringAsFixed(2)}\n"
         "With discount: \$${discountedTotal.toStringAsFixed(2)}";
}

void main() {
  double weight = 70; 
  double height = 1.75; 
  print("==============================Task1=================================");
  print(calculateBMI(weight, height));

  print("==============================Task2=================================");
  print(calculateAverage([85, 90, 78, 92]));

  print("==============================Task3=================================");
  print(atmSimulation(1000.0, 2, 500.0)); // Deposit
  print(atmSimulation(1000.0, 3, 1200.0)); // Withdraw

  print("==============================Task4=================================");
  String word = "hello";
  print("Is '$word' a palindrome? ${isPalindrome(word)}");

  print("==============================Task5=================================");
  Map<String, double> cart = {"Shirt": 20.0, "Jeans": 50.0, "Shoes": 80.0};
  print(calculateCartTotal(cart, 0.10)); 
}
