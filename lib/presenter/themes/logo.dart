import 'package:flutter/material.dart';
import 'colors.dart';

class Logo extends StatelessWidget {
  final double width;
  final double height;
  final double? fontSize;

  const Logo({
    Key? key,
    this.width = 41.59,
    this.height = 41.34,
    this.fontSize = 41.62,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: width / 2.1, right: 10),
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      MyColor.logo1.withOpacity(0.4),
                      MyColor.logo2.withOpacity(0.4),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(width),
                      bottomRight: Radius.circular(width)),
                ),
              ),
            ),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [MyColor.logo1, MyColor.logo2],
                ),
                borderRadius: BorderRadius.all(Radius.circular(width)),
              ),
            ),
          ],
        ),
        Text(
          'flattel',
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
