import 'package:flutter/material.dart';

class FriendFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
            child: ListTile(
          title: Text('TOTAL BALANCE',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              )),
          subtitle: Text('you are owned \$12345'),
          leading: Icon(
            Icons.supervised_user_circle_rounded,
            size: 80,
            color: Colors.blue[500],
          ),
        )),
        SizedBox(
            width: 60,
            child: Icon(
              Icons.list,
              size: 40,
            ))
      ],
    );
  }
}
