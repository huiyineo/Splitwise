import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.lightGreen),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 30.0,
                    child: Text(
                      "UserName",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    bottom: 8.0,
                    child: Text(
                      "username@email.com",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Positioned(
                    bottom: 70.0,
                    child: CircleAvatar(
                      radius: 30,
                      child: ClipOval(
                        child: new SizedBox(
                          width: 100.0,
                          height: 100.0,
                          child: new Image.network(
                            'https://caseyboz10331.files.wordpress.com/2014/05/20140510-195426.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          /*Row(
                  children: <Widget>[
                    Text('Try Pro!'),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),*/
          _createDrawerItem(
            icon: Icons.home,
            text: 'Home',
          ),
          _createDrawerItem(
            icon: Icons.settings,
            text: 'Settings',
          ),
          _createDrawerItem(
            icon: Icons.qr_code_scanner,
            text: 'Scan code',
          ),
          _createDrawerItem(
            icon: Icons.logout,
            text: 'Log out',
          )
        ],
      ),
    );
  }
}
