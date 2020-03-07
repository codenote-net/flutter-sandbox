import 'package:flutter/material.dart';
import 'package:flutter_sandbox/routes/index.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(Routes.home);
              }),
          ListTile(
              leading: Icon(Icons.web_asset),
              title: Text('Assets'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(Routes.assets);
              }),
          ListTile(
              leading: Icon(Icons.camera),
              title: Text('Camera'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(Routes.camera);
              }),
          ListTile(
              leading: Icon(Icons.photo),
              title: Text('Gallery'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(Routes.gallery);
              }),
          ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(Routes.messages);
              }),
          ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(Routes.profile);
              }),
          ListTile(
            leading: Icon(Icons.close),
            title: Text('Colse Drawer'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
