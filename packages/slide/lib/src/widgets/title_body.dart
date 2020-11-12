import 'package:flutter/material.dart';

class TitleAndBody extends StatelessWidget {
  final String title;
  final Widget child;

  const TitleAndBody({Key key, this.title, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text(
          title,
          style: TextStyle(fontSize: 40),
        ),
        elevation: 0,
      ),
      body: child,
    );
  }
}
