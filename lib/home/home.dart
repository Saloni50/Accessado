import 'package:accassado/service/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        backgroundColor: Colors.pink[200],
        elevation: 50.0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
                await _auth.signingOut();
              },
              icon: Icon(Icons.person),
              label: Text("Logout")),
        ],
      ),
      body: Container(
          child: Center(
        child: Text("Hii"),
      )),
      drawer: Drawer(
        child: ListView(
          children: [
            //header
            new UserAccountsDrawerHeader(
              accountEmail: Text('Name'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Color(0xff3A2C22),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.pink[200]),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(
                  Icons.home,
                  color: Colors.brown,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('MyAccount'),
                leading: Icon(Icons.person, color: Colors.brown),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Add service'),
                leading: Icon(Icons.home_repair_service, color: Colors.brown),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Setting'),
                leading: Icon(Icons.settings, color: Colors.brown),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.brown,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
