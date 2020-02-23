import 'package:flutter/material.dart';
import 'package:flutter_sandbox/widgets/components/drawer.dart';

class MessagesScreen extends StatelessWidget {
  static const String routeName = '/messages';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Messages"),
        ),
        drawer: AppDrawer(),
        body: Center(child: Text("Messages")));
  }
}
