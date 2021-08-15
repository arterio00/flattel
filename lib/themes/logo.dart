import 'package:flutter/material.dart';
import 'colors.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Opacity(
              opacity: 0.4,
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                height: 41.34,
                width: 41.59,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [MyColor.logo1, MyColor.logo2],
                  ),
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(41.34, 41.59)),
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [MyColor.logo1, MyColor.logo2],
                        ),
                        shape: BoxShape.rectangle),
                  ),
                ),
              ),
            ),
            Container(
              height: 40.18,
              width: 41.59,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [MyColor.logo1, MyColor.logo2],
                ),
                borderRadius: BorderRadius.all(Radius.elliptical(40.18, 41.59)),
              ),
            ),
          ],
        ),
        const Text(
          'Swipe',
          style: TextStyle(
            color: Colors.white,
            fontSize: 41.62,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
