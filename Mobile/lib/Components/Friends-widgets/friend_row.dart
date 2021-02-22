import 'dart:ffi';

import 'package:flutter/material.dart';

class FriendRow extends StatelessWidget {
  final String name;
  final String status;
  final String amount;
  FriendRow(this.name, this.status, this.amount);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          SizedBox(
              width: 70,
              child: Icon(
                Icons.account_circle_outlined,
                color: Color.fromRGBO(59, 174, 142, 1),
                size: 50,
              )),
          Expanded(
              child: Text(
            this.name,
            textAlign: TextAlign.left,
          )),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
            alignment: Alignment.centerRight,
            height: 60,
            width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    alignment: Alignment.centerRight,
                    child: Text(this.status,
                        style: TextStyle(
                            color: Color.fromRGBO(59, 174, 142, 1),
                            fontSize: 11))),
                Container(
                    alignment: Alignment.centerRight,
                    child: Text(this.amount,
                        style: TextStyle(
                            color: Color.fromRGBO(59, 174, 142, 1),
                            fontSize: 16)))
              ],
            ),
          )
        ]));
  }
}
