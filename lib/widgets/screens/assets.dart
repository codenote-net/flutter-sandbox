import 'package:flutter/material.dart';
import 'package:flutter_sandbox/widgets/components/drawer.dart';

class AssetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Assets"),
      ),
      drawer: AppDrawer(),
      body: Center(
          child: Image(
              image: AssetImage('assets/images/codenote-net-200x200.jpg'))),
    );
  }
}
