import 'package:flutter/material.dart';
import 'dart:io' show Platform;

abstract class PlatformWidget<A extends Widget, I extends Widget>
    extends StatelessWidget {
  const PlatformWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return createIosWidget(context);
    } else {
      return createAndroidWidget(context);
    }
  }

  I createIosWidget(BuildContext context);

  A createAndroidWidget(BuildContext context);
}
