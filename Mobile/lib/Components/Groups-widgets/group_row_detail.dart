import 'package:flutter/material.dart';

class GroupRowDetail extends StatelessWidget {
  final String name;
  final String status;
  final String amount;
  GroupRowDetail(this.name, this.status, this.amount);

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
        height: 22,
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          SizedBox(
            width: 70,
          ),
          Expanded(
              child: Row(
            children: [
              Text(this.name + ' ',
                  style: TextStyle(
                      color: Color.fromRGBO(170, 170, 170, 1), fontSize: 11)),
              Text(this.status + ' ',
                  style: TextStyle(
                      color: Color.fromRGBO(170, 170, 170, 1), fontSize: 11)),
              Text(this.amount,
                  style: TextStyle(
                      color: colorByStatus(this.status), fontSize: 11))
            ],
          ))
        ]));
  }
}
