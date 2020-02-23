import 'package:flutter/material.dart';
import 'package:flutter_sandbox/widgets/components/drawer.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        drawer: AppDrawer(),
        body: Center(child: Text("Profile")));
  }
}
