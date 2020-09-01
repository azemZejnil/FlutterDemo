import 'package:flutter/material.dart';
import 'package:test_app/src/models/expense_item.dart';


class ItemAddNotifier extends ChangeNotifier {
  List<ExpenseItem> itemList = [];

  addItem() async {
    ExpenseItem item = ExpenseItem("\$", "Expense title", "08 31 2020", "\$ 10");
    itemList.add(item);
    notifyListeners();
  }
}