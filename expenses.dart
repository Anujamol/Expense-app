import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/models/expenses_list.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget{
 const Expenses({super.key});

 @override
  State<Expenses> createState() {
   return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
      category: 'Work',
    ),
    Expense(
      title: 'Cinema',
      amount: 15.69,
      date: DateTime.now(),
      category: 'leisure',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:  [
          const Text('The chart'),
          ExpensesList(expenses: _registeredExpenses)
          
        ],
      ),
    );
  }
}
  




