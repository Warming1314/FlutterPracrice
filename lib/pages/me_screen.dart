import 'package:flutter/material.dart';

class MeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('我的标题'),
      ),
      body: Center(
        child: Text('Me'),
      ),
    );
  }
}