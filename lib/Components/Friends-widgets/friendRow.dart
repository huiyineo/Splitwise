import 'dart:ffi';

import 'package:flutter/material.dart';

class FriendRow extends StatelessWidget {
  final String name;
  final String status;
  final String amount;
  FriendRow(this.name, this.status, this.amount);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.max, children: [
      SizedBox(
          width: 50,
          child: Icon(
            Icons.supervised_user_circle_rounded,
            color: Colors.blue[500],
            size: 50,
          )),
      Expanded(
          child: Text(
        this.name,
        textAlign: TextAlign.left,
      )),
      Container(
        child: Column(
          children: [
            Text(this.status,
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.grey[500], fontSize: 11)),
            Text(this.amount,
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.grey[500], fontSize: 16))
          ],
        ),
      )
    ]);
  }
}
