import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/src/notifier/expenses_notifier.dart';
import 'package:test_app/src/styles/base.dart';
import 'package:test_app/src/widgets/adding_button.dart';
import 'package:test_app/src/widgets/expense_progress.dart';
import 'package:test_app/src/widgets/list_items.dart';

class Expenses extends StatefulWidget {
  @override
  _ExpensesState createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoPageScaffold(
          child: pageBody()
      );
    } else {
      return Scaffold(
          body: pageBody()
      );
    }
  }

  Widget pageBody() {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: BaseStyles.expensesBackgroundColor),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ExpenseProgress("60\$", 100, "Mon."),
                ExpenseProgress("", 5, "Tue."),
                ExpenseProgress("", 5, "Wen."),
                ExpenseProgress("", 5, "Thu."),
                ExpenseProgress("", 5, "Fri."),
                ExpenseProgress("", 5, "Sat."),
                ExpenseProgress("", 5, "Sun."),
              ],
            ),
          ),
          AddingButton(),
          ListItems(),
        ],
      ),
    );
  }

}
