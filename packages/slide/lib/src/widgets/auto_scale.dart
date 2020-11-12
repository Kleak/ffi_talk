import 'package:flutter/material.dart';

class AutoScale extends StatelessWidget {
  final Widget child;

  const AutoScale({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 0, 81, 124),
      child: FittedBox(
        child: SizedBox(
          width: 1920,
          height: 1080,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: child,
          ),
        ),
      ),
    );
  }
}
