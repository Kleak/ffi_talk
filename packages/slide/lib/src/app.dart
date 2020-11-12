import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:slide/src/views/001.dart';
import 'package:slide/src/views/002.dart';
import 'package:slide/src/widgets/auto_scale.dart';

class FfiTalkSlides extends StatefulWidget {
  @override
  _FfiTalkSlidesState createState() => _FfiTalkSlidesState();
}

class _FfiTalkSlidesState extends State<FfiTalkSlides> {
  final navigatorKey = GlobalKey<NavigatorState>();
  final focusNode = FocusNode();
  final slides = [
    Slide001(),
    Slide002(),
  ];

  int currentSlideIndex = 0;

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      autofocus: true,
      focusNode: focusNode,
      onKey: (event) {
        if (event is RawKeyUpEvent) {
          if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
            next();
          } else if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
            previous();
          }
        }
      },
      child: MaterialApp(
        navigatorKey: navigatorKey,
        theme: ThemeData(
          primaryColor: Color.fromARGB(255, 0, 81, 124),
          accentColor: Color.fromARGB(255, 235, 120, 35),
        ),
        home: AutoScale(
          child: Slide001(),
        ),
      ),
    );
  }

  void next() {
    if (currentSlideIndex + 1 >= slides.length) {
      return;
    }
    currentSlideIndex++;
    final widget = slides[currentSlideIndex];
    navigatorKey.currentState.push(MaterialPageRoute(builder: (context) => AutoScale(child: widget)));
  }

  void previous() {
    if (currentSlideIndex == 0) {
      return;
    }
    currentSlideIndex--;
    navigatorKey.currentState.pop();
  }
}
