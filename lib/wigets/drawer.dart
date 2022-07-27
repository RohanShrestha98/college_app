import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/dummy.dart';

import 'next_page.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:Colors.green,
      child: Container(
        child: ListView(
          children:  [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration:BoxDecoration(color: Colors.green) ,
                accountName: Text("Rohan Shrestha"),
                accountEmail: Text("nahorshrestha@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/2.jpg"),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Dummy_Page(),
                  ),
            );
          },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => NextPage(),
                  ),
            );
          },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.alarm,
                color: Colors.white,
              ),
              title: Text(
                "Classes for today",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.book,
                color: Colors.white,
              ),
              title: Text(
                "Modules for this Semester",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              
              leading: Icon(
                CupertinoIcons.person,
                color: Colors.white,
              ),
              title: Text(
                "Consult with teacher",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

