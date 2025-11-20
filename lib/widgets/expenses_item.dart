import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({super.key, required this.exp});
  final Expense exp;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Text(exp.title),
            SizedBox(height: 4),
            Row(
              children: [
                Text('\$${exp.amount.toStringAsFixed(2)}'),
                Spacer(),
                Row(
                  children: [
                    Icon(categoryIcon[exp.category]),
                    SizedBox(width: 8),
                    Text(' ${exp.formattedDate}'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
