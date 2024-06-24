import'dart:io';
void main() {
  // Prompting the user to enter their weight
  stdout.write('Enter your weight in kilograms: ');
  double weight = double.parse(stdin.readLineSync()!);

  // Prompting the user to enter their height
  stdout.write('Enter your height in meters: ');
  double height = double.parse(stdin.readLineSync()!);

  // Calculating the BMI
  double bmi = calculateBMI(weight, height);

  // Printing the BMI
  print('Your BMI is: ${bmi.toStringAsFixed(2)}');

  // Providing interpretation of the BMI
  print('BMI Interpretation: ${interpretBMI(bmi)}');
}

// Function to calculate BMI
double calculateBMI(double weight, double height) {
  return weight / (height * height);
}

// Function to interpret BMI
String interpretBMI(double bmi) {
  if (bmi < 18.5) {
    return 'Underweight';
  } else if (bmi >= 18.5 && bmi < 24.9) {
    return 'Normal weight';
  } else if (bmi >= 25 && bmi < 29.9) {
    return 'Overweight';
  } else {
    return 'Obesity';
  }
}