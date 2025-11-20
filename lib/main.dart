import 'package:expense_tracker/expenses_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expense Tracker"),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
        ),
        body: ExpensesApp(),
      ),
    );
  }
}
