import 'package:flutter/material.dart';
import '../models/expense.dart';

class ExpenseTile extends StatelessWidget {
  final Expense expense;
 
  const ExpenseTile({super.key, required this.expense});


  @override
  Widget build(BuildContext context) {
    return ListTile(
          leading: CircleAvatar(
            child: Icon(iconFor(expense.category)),
          ),
          title: Text(expense.title),
          subtitle: Text(expense.category),
          trailing: Text(
            formatIqd(expense.amount),
            style: Theme.of(context).textTheme.titleMedium)
          
        );
  }

}

IconData iconFor(String category){
    switch (category) {
    case 'Food':
      return Icons.restaurant;
    case 'Transport':
      return Icons.directions_bus;
    case 'Bills':
      return Icons.receipt_long;
    case 'Fun':
      return Icons.celebration;
    default:
      return Icons.payments;
  }
 
}