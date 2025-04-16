// Task 1: Car Class with Attributes and Methods
class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void displayInfo() {
    print("Brand: $brand");
    print("Model: $model");
    print("Year: $year");
  }
}

// Task 2: Inheritance and Method Overriding
class Animal {
  void makeSound() {
    print("Animal makes a sound");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat meows");
  }
}

// Task 3: Getters and Setters for Encapsulation
class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  set deposit(double value) {
    if (value > 0) {
      _balance += value;
    } else {
      print("Error: Deposit must be positive.");
    }
  }
}

void main() {
print("==============Task 1================");

  Car car1 = Car('Tesla', 'Model S', 2022);
  car1.displayInfo();

  print("==============Task 2================");

  Dog dog = Dog();
  dog.makeSound();

  Cat cat = Cat();
  cat.makeSound();

  print("=============Task 3=================");

  BankAccount account = BankAccount();
  account.deposit = 500;
  print("Balance: ${account.balance}");
  account.deposit = -100; // Invalid deposit
}
