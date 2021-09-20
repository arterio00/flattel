import 'package:flutter/material.dart';
import 'package:swipe/pages/home/components/my_dropmenu.dart';

class PersonalAccount extends StatelessWidget {
  const PersonalAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        color: Colors.blue,
        height: 120.0,
        width: 120.0,
        child: Baseline(
          child: Container(
            color: Colors.red,
            height: 60.0,
            width: 60.0,
          ),
          baseline: 180,
          baselineType: TextBaseline.alphabetic,
        ),
      ),
    ));
  }
}
