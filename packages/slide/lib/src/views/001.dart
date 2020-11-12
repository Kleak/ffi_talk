import 'package:flutter/material.dart';
import 'package:slide/src/widgets/title_only.dart';

class Slide001 extends StatefulWidget {
  @override
  _Slide001State createState() => _Slide001State();
}

class _Slide001State extends State<Slide001> {
  @override
  Widget build(BuildContext context) {
    return TitleOnly(
      title: 'FFI in action',
    );
  }
}
