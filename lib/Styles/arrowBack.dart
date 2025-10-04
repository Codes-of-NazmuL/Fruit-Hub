import 'package:flutter/material.dart';
import 'package:fruit_hub_mobile_app/Styles/fontstyles.dart';

class Arrowback extends StatefulWidget {
  const Arrowback({super.key});

  @override
  State<Arrowback> createState() => _ArrowbackState();
}

class _ArrowbackState extends State<Arrowback> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 32,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            SizedBox(width: 8),
            Icon(Icons.arrow_back_ios),
            HeadingFont(
              entertext: "Go back",
              enterfontSize: 16,
              enterWight: FontWeight.w400,
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
