import 'package:flutter/material.dart';

class HeadingFont extends StatelessWidget {
  final String entertext;
  final Color? enterColor;
  final double? enterfontSize;
  final TextAlign? enterAlign;
  final FontWeight? enterWight;

  const HeadingFont({
    super.key,
    required this.entertext,
    this.enterColor,
    this.enterfontSize,
    this.enterAlign,
    this.enterWight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      entertext,
      style: TextStyle(
        fontFamily: "Brandon Grotesque",
        fontSize: enterfontSize == null ? 20 : enterfontSize!,
        color: enterColor == null ? Colors.black : enterColor!,
        fontWeight: enterWight==null?FontWeight.w500:enterWight!
      ),
      textAlign: enterAlign,
    );
  }
}
