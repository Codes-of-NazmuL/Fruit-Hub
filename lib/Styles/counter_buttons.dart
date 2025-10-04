import 'package:flutter/material.dart';
import 'package:fruit_hub_mobile_app/Styles/fontstyles.dart';

class CounterButtons extends StatefulWidget {
  const CounterButtons({super.key});

  @override
  State<CounterButtons> createState() => _CounterButtonsState();
}

class _CounterButtonsState extends State<CounterButtons> {
  int itemValue = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 150,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              itemValue == 0 || itemValue < 0 ? null : itemValue -= 1;
              setState(() {});
            },
            icon: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black),
              ),
              child: Icon(Icons.remove, size: 16),
            ),
          ),
          Spacer(),
          HeadingFont(entertext: "$itemValue"),
          Spacer(),
          IconButton(
            onPressed: () {
              itemValue += 1;
              setState(() {});
            },
            icon: Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                color: Color(0xFFFFF2E6),
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xFFFFF2E6))
              ),
              child: Icon(Icons.add, color: Colors.orange),
            ),
          ),
        ],
      ),
    );
  }
}
