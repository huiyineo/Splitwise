import 'package:flutter/material.dart';

class FriendFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        //width: double.infinity,
        //margin: EdgeInsets.fromLTRB(0, 5, 0, 15),
        alignment: Alignment.centerLeft,
        color: Colors.grey[300],
        height: 110,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
                width: 100,
                child: Icon(Icons.supervised_user_circle_outlined,
                    size: 80, color: Color.fromRGBO(59, 174, 142, 1))),
            Expanded(
                child: Container(
                    width: double.infinity,
                    //margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    height: 110,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'TOTAL BALANCE',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[600]),
                            )),
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Text('you are owned \$12345',
                                style: TextStyle(
                                    color: Color.fromRGBO(59, 174, 142, 1)))),
                      ],
                    ))),
            SizedBox(
                width: 60,
                child: Icon(
                  Icons.filter_list_rounded,
                  size: 40,
                ))
          ],
        ));
  }
}
