import 'package:flutter/material.dart';
import 'colors.dart';

class Logo extends StatelessWidget {
  final double width;
  final double height;
  final double? fontSize;
  const Logo(
      {Key? key,
      this.width = 41.59,
      this.height = 41.34,
      this.fontSize = 41.62})
      : super(key: key);

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
                height: height,
                width: width,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [MyColor.logo1, MyColor.logo2],
                  ),
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(height, width)),
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
              height: height,
              width: width,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [MyColor.logo1, MyColor.logo2],
                ),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(height, width)),
              ),
            ),
          ],
        ),
        Text(
          'Swipe',
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
