// tool/async_demo.dart — dart run tool/async_demo.dart
import 'package:spendwise/data/fake_expense_repository.dart';
import 'package:spendwise/models/category.dart';
import 'package:spendwise/models/expense.dart';
import 'package:spendwise/utils/expense_x.dart';

Future<void> main() async {
  final repo = FakeExpenseRepository();
  final sub = repo.watchAll().listen(
      (list) => print('stream → total ${list.total.asMoney}'));

  print('loading…');
  final items = await repo.loadAll();
  print('loaded ${items.length} items');

  await repo.add(Expense(id: 'e7', title: 'Coffee', amount: 2.5,
      category: Category.food, date: DateTime.now()));

  await sub.cancel();
  repo.dispose();
}