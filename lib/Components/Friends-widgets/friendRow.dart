import 'dart:ffi';

import 'package:flutter/material.dart';

class FriendRow extends StatelessWidget {
  final String name;
  final String status;
  final String amount;
  FriendRow(this.name, this.status, this.amount);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(this.name));
  }
}
