import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';
import "package:expense_tracker/models/expense.dart";

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      category: Category.work,
      title: "Flutter Certification",
      date: DateTime.now(),
      amount: 1999,
    ),
    Expense(
      category: Category.leisure,
      title: "Movie",
      date: DateTime.now(),
      amount: 999,
    ),
    Expense(
      category: Category.food,
      title: "Dinner",
      date: DateTime.now(),
      amount: 599,
    ),
  ];

  @override
  Widget build(BuildContext content) {
    return Scaffold(
      body: Column(
        children: [
          const Text("The chart"),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          )
        ],
      ),
    );
  }
}
