import 'package:flutter/material.dart';
import '../models/expense.dart';
import 'expense_tile.dart';

class ExpenseList extends StatelessWidget {
  final List<Expense> expenses;
  const ExpenseList({super.key, required this.expenses});
  @override
  Widget build(BuildContext context) {
  return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Recent Expenses',
            style: Theme.of(context).textTheme.titleMedium),
          ),
        Expanded(child: ListView(
          children: [
        for (final e in sampleExpenses)
         ExpenseTile(expense: e)
      ])
        )

            ]);
  }
}