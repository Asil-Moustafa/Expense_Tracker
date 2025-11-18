import 'package:uuid/uuid.dart';

class Expense {
  Expense({required this.title, required this.amount, required this.date, required this.category});
  final String id = Uuid().v4();
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}

enum Category { food, work, leisure, travel }
