import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/src/notifier/expenses_notifier.dart';

class ListItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<ItemAddNotifier>(
        builder: (context, itemAddNotifier, _) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: itemAddNotifier.itemList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "${itemAddNotifier.itemList[index].currency}  ${itemAddNotifier.itemList[index].title}  ${itemAddNotifier.itemList[index].date}       ${itemAddNotifier.itemList[index].value}" ,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
