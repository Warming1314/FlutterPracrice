import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('首页标题'),
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}