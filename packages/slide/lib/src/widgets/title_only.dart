import 'package:flutter/material.dart';

class TitleOnly extends StatelessWidget {
  final String title;

  const TitleOnly({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
