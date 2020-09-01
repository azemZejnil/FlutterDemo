import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'notifier/expenses_notifier.dart';
import 'screens/expenses.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformApp();
  }
}

class PlatformApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return ChangeNotifierProvider<ItemAddNotifier>(
        create: (BuildContext context) {
          return ItemAddNotifier();
        },
        child: CupertinoApp(home: Expenses()),
      );
    } else {
      return ChangeNotifierProvider<ItemAddNotifier>(
        create: (BuildContext context) {
          return ItemAddNotifier();
        },
        child: MaterialApp(
          home: Expenses(),
        ),
      );
    }
  }
}
