import 'package:flutter/cupertino.dart';

class Expense {
  final String title;
  final int amount;
  final String category;
  final DateTime date;
  
  Expense({
    required this.title,
    required this.amount,
    required this.category,
    required this.date
  });

@override
String toString() => '$title ($category): ${formatIqd(amount)}';  
}

final List<Expense> sampleExpenses = [
  Expense(title: 'Lunch', amount: 8000,
      category: 'Food', date: DateTime(2026, 10, 12)),
  Expense(title: 'Bus ticket', amount: 1500,
      category: 'Transport', date: DateTime(2026, 10, 12)),
  Expense(title: 'Internet bill', amount: 35000,
      category: 'Bills', date: DateTime(2026, 10, 10)),
  Expense(title: 'Cinema', amount: 12000,
      category: 'Fun', date: DateTime(2026, 10, 9)),
        Expense(title: 'Lunch', amount: 8000,
      category: 'Food', date: DateTime(2026, 10, 12)),
  Expense(title: 'Bus ticket', amount: 1500,
      category: 'Transport', date: DateTime(2026, 10, 12)),
  Expense(title: 'Internet bill', amount: 35000,
      category: 'Bills', date: DateTime(2026, 10, 10)),
  Expense(title: 'Cinema', amount: 12000,
      category: 'Fun', date: DateTime(2026, 10, 9)),
        Expense(title: 'Lunch', amount: 8000,
      category: 'Food', date: DateTime(2026, 10, 12)),
  Expense(title: 'Bus ticket', amount: 1500,
      category: 'Transport', date: DateTime(2026, 10, 12)),
  Expense(title: 'Internet bill', amount: 35000,
      category: 'Bills', date: DateTime(2026, 10, 10)),
  Expense(title: 'Cinema', amount: 12000,
      category: 'Fun', date: DateTime(2026, 10, 9)),
];

int totalOf(List<Expense> expenses){
  int total = 0;
  for (final e in expenses){
    total += e.amount;
  }
  return total;
}

String formatIqd(int amount){
  final digits = amount.toString();
  String result = ' ';
  for(int i = 0; i < digits.length; i++){
    final left = digits.length -i;
    if (i > 0 && left % 3 == 0){
      result += ',';
    }
    result += digits[i];
  }
  return 'IQD $result';
}

