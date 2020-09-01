
import 'package:flutter/material.dart';

abstract class ExpenseStyles {
  static Color get expensesProgressColor => Colors.deepPurple;
  static Color get expensesProgressToGo => Colors.lightBlue;
  static int get expensesNumberOfSteps => 100;
  static double get expensesUnselectedThickness => 10.0;
  static double get expensesSelectedThickness => 10.0;
}