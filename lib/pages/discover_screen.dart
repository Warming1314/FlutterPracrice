import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('发现标题'),
      ),
      body: Center(
        child: Text('Discover'),
      ),
    );
  }
}