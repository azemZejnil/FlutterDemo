import 'dart:io';

import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:test_app/src/styles/base.dart';
import 'package:test_app/src/styles/expense_styles.dart';

class ExpenseProgress extends StatelessWidget {

  ExpenseProgress(this.dollars,this.currentStep,this.day);

  final String dollars;
  final String day;
  final int currentStep;

  @override
  Widget build(BuildContext context) {
    if(Platform.isIOS){
      return Container(
        height: MediaQuery.of(context).size.height * .3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(dollars),
            Container(
              child: StepProgressIndicator(
                totalSteps: ExpenseStyles.expensesNumberOfSteps,
                direction: Axis.vertical,
                currentStep: currentStep,
                padding: 0,
                selectedColor: ExpenseStyles.expensesProgressColor,
                unselectedColor: ExpenseStyles.expensesProgressToGo,
                unselectedSize: ExpenseStyles.expensesUnselectedThickness,
                progressDirection: TextDirection.rtl,
                selectedSize: ExpenseStyles.expensesSelectedThickness,
              ),
            ),
            Text(day)
          ],
        ),
      );
    }
    else {
      return Column(
        children: [
          Text(dollars),
          Container(
            height: MediaQuery.of(context).size.height * .3,
            child: StepProgressIndicator(
              totalSteps: ExpenseStyles.expensesNumberOfSteps,
              direction: Axis.vertical,
              currentStep: currentStep,
              padding: 0,
              selectedColor: ExpenseStyles.expensesProgressColor,
              unselectedColor: ExpenseStyles.expensesProgressToGo,
              unselectedSize: ExpenseStyles.expensesUnselectedThickness,
              progressDirection: TextDirection.rtl,
              selectedSize: ExpenseStyles.expensesSelectedThickness,
            ),
          ),
          Text(day)
        ],
      );
    }
  }

}
