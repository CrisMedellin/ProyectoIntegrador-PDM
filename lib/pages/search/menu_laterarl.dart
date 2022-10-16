import 'package:bibliteso/pages/login/login.dart';
import 'package:bibliteso/pages/register/register.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text("CODEA APP"),
            accountEmail: Text("informes@gmail.com"),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://w7.pngwing.com/pngs/178/595/png-transparent-user-profile-computer-icons-login-user-avatars-thumbnail.png"),
                    fit: BoxFit.cover)),
          ),
          Ink(
            color: Colors.indigo,
            child: new ListTile(
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          new ListTile(
            leading: Icon(FontAwesomeIcons.toolbox),
            title: Text("-Configuration"),
            onTap: () {},
          ),
          new ListTile(
            leading: Icon(FontAwesomeIcons.signIn),
            title: Text("-Register"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RegisterBook(),
                ),
              );
            },
          ),
          new ListTile(
            leading: Icon(FontAwesomeIcons.book),
            title: Text("-Loan "),
          ),
          new ListTile(
            leading: Icon(Icons.notifications),
            title: Text("-Reminder"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => LoginApp(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
