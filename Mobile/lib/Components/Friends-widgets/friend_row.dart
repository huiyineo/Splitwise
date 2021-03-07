import 'package:flutter/material.dart';

class FriendRow extends StatelessWidget {
  final String name;
  final String status;
  final String amount;
  FriendRow(this.name, this.status, this.amount);

  colorByStatus(status) {
    switch (status) {
      case 'you owe':
        return Color.fromRGBO(255, 101, 47, 1);
      case 'settled up':
        return Color.fromRGBO(170, 170, 170, 1);
      default:
        return Color.fromRGBO(91, 197, 167, 1);
    }
  }

  isSettled(status) {
    return status == 'settled up';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          SizedBox(
              width: 70,
              child: Icon(
                Icons.account_circle_outlined,
                color: Color.fromRGBO(91, 197, 167, 1),
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
                            color: colorByStatus(this.status), fontSize: 11))),
                if (!isSettled(this.status))
                  Container(
                      alignment: Alignment.centerRight,
                      child: Text(this.amount,
                          style: TextStyle(
                              color: colorByStatus(this.status), fontSize: 16)))
              ],
            ),
          )
        ]));
  }
}
