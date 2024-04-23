import "package:expense_tracker/widgets/expenses_list/expense_item.dart";
import 'package:flutter/material.dart';
import "package:expense_tracker/widgets/expenses_list/expenses_list.dart";
import "package:expense_tracker/models/expense.dart";

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
  });
  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:
          expenses.length, //how many list items would be rendered eventually
      itemBuilder: (context, index) => ExpenseItem(expenses[index]),
    );
  }
}
