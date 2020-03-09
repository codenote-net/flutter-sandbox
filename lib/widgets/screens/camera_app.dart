import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_sandbox/widgets/components/drawer.dart';
import 'package:image_picker/image_picker.dart';

class CameraAppScreen extends StatefulWidget {
  @override
  _CameraAppScreenState createState() => _CameraAppScreenState();
}

class _CameraAppScreenState extends State<CameraAppScreen> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera App'),
      ),
      body: Center(
        child: _image == null ? Text('No image selected.') : Image.file(_image),
      ),
      drawer: AppDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}
