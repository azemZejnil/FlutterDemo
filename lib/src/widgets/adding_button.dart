import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/src/notifier/expenses_notifier.dart';
import 'package:test_app/src/styles/button_styles.dart';

class AddingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: ButtonStyles.buttonHeight,
        width: MediaQuery.of(context).size.width,
        child: (Platform.isIOS)
            ? CupertinoButton(
                child: Text("Add item"),
                onPressed: () async {
                  await Provider.of<ItemAddNotifier>(context, listen: false).addItem();
                })
            : RaisedButton(
                child: Text("Add item "),
                onPressed: () async {
                  await Provider.of<ItemAddNotifier>(context, listen: false).addItem();
                },
              ));
  }
}
