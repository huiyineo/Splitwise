import 'package:flutter/material.dart';

class Expense extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Expense'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        margin: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                children: <Widget>[
                  new Flexible(
                    flex: 1,
                    child: CustomElevation(
                      child: IconButton(
                        icon: Icon(Icons.category_outlined),
                        color: Colors.black,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  new Flexible(
                    flex: 5,
                    child: Container(
                      margin: EdgeInsets.only(left: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.lightGreen, width: 2.0),
                          ),
                          hintText: 'Enter a description',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                children: <Widget>[
                  new Flexible(
                    flex: 1,
                    child: CustomElevation(
                      child: IconButton(
                        icon: Icon(Icons.attach_money_outlined),
                        color: Colors.black,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  new Flexible(
                    flex: 5,
                    child: Container(
                      margin: EdgeInsets.only(left: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.lightGreen, width: 2.0),
                          ),
                          hintText: '0.00',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text("Paid by "),
                CustomElevation(
                  child: RaisedButton(
                    child: Text('YOU'),
                    onPressed: () {
                      showDialog(
                          context: context,
                          child: SimpleDialog(
                            title: Text("Choose payer"),
                            children: [
                              SimpleDialogItem(
                                icon: Icons.account_circle,
                                color: Colors.orange,
                                text: 'Kaythi',
                                onPressed: () {
                                  Navigator.pop(context, 'user01@gmail.com');
                                },
                              )
                            ],
                          ));
                    },
                  ),
                ),
                Text(" and split "),
                CustomElevation(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text('EQUALLY'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SimpleDialogItem extends StatelessWidget {
  const SimpleDialogItem(
      {Key key, this.icon, this.color, this.text, this.onPressed})
      : super(key: key);

  final IconData icon;
  final Color color;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 36.0, color: color),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16.0),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}

class CustomElevation extends StatelessWidget {
  final Widget child;

  CustomElevation({@required this.child}) : assert(child != null);

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 0.1,
            blurRadius: 1.0,
          ),
        ],
      ),
      child: this.child,
    );
  }
}
