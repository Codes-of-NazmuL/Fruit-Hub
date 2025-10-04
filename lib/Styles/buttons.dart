import 'package:flutter/material.dart';
import 'package:fruit_hub_mobile_app/Styles/fontstyles.dart';

class BigButton extends StatefulWidget {
  final String buttonText;
  final Widget? giveWidget;
  const BigButton({super.key, required this.buttonText, this.giveWidget});

  @override
  State<BigButton> createState() => _BigButtonState();
}

class _BigButtonState extends State<BigButton> {
  late double dspHeight = MediaQuery.of(context).size.height;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.giveWidget == null
            ? null
            : Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => widget.giveWidget!),
              );
      },
      child: Expanded(
        child: Container(
          height: dspHeight < 500 ? 56 : dspHeight * .065,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.orangeAccent,
          ),
          child: Center(
            child: HeadingFont(
              entertext: widget.buttonText,
              enterColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
