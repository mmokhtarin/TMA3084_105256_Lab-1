import 'dart:io';

void main() {
  print('====================================');
  print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"');

  String size = '';
  int unitPrice = 0;

  // while loop to validate pizza size input
  while (true) {
    stdout.write('Please enter your pizza size (small, medium, or large):\n');
    String? input = stdin.readLineSync();

    if (input == null || input.trim().isEmpty) {
      continue;
    }

    size = input.trim().toLowerCase();

    // switch statement to determine price
    switch (size) {
      case 'small':
        unitPrice = 5;
        break;
      case 'medium':
        unitPrice = 7;
        break;
      case 'large':
        unitPrice = 10;
        break;
      default:
        continue;
    }
    break;
  }

  int quantity = 0;

  // while loop to validate quantity input
  while (true) {
    stdout.write('How many pizzas do you want of $size?\n');
    String? qtyInput = stdin.readLineSync();

    if (qtyInput != null) {
      int? parsed = int.tryParse(qtyInput.trim());
      if (parsed != null && parsed > 0) {
        quantity = parsed;
        break;
      }
    }
  }

  int totalPayment = unitPrice * quantity;
  print('Your Total Payment is: \$$totalPayment');
}