import 'package:flutter/material.dart';
final myAppbar=AppBar(
   backgroundColor: Colors.grey[900],
);
final  myDrawer=Drawer(
   backgroundColor: Colors.grey[300],
        child: const Column(children: [
          DrawerHeader(
            child: Icon(Icons.favorite)),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("DASHBOARD"),
          ),
           ListTile(
            leading: Icon(Icons.chat),
            title: Text("MESSAGE"),
          ),
           ListTile(
            leading: Icon(Icons.settings),
            title: Text("SETTINGS"),
          ),
           ListTile(
            leading: Icon(Icons.logout),
            title: Text("LOGOUT"),
          ),
        ]),
);
final defaultbackgroundcolor=Colors.grey[300];