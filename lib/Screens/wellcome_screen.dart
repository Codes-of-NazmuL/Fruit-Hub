import 'package:flutter/material.dart';
import 'package:fruit_hub_mobile_app/Screens/authentication_screen.dart';
import 'package:fruit_hub_mobile_app/Styles/buttons.dart';
import 'package:fruit_hub_mobile_app/Styles/fontstyles.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({super.key});

  @override
  State<WellcomeScreen> createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {

  @override
  Widget build(BuildContext context) {
    final dspWidth = MediaQuery.of(context).size.width;
    final dspheight = MediaQuery.of(context).size.height;
    final oriantation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: oriantation == Orientation.portrait
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.orangeAccent),
                    child: Column(
                      children: [
                        Spacer(),
                        Image.asset(
                          "asstes/image/fruit_1.png",
                          height: dspheight * .4,
                          width: dspWidth,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 56),
                          HeadingFont(
                            entertext: "Get The Freshest Fruit Salad Combo",
                          ),
                          SizedBox(height: 10),
                          HeadingFont(
                            entertext:
                            "We deliver the best and freshest fruit salad in\n town. Order for a combo today!!!",
                            enterfontSize: 16,
                            enterColor: Colors.grey,
                            enterWight: FontWeight.w400,

                          ),
                          Spacer(),
                          BigButton(buttonText: "Let’s Continue",giveWidget: AuthenticationScreen(),),
                          SizedBox(height: 88,)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          : Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.orangeAccent),
                    child: Image.asset(
                      "asstes/image/fruit_1.png",
                      height: dspheight,
                      width: dspWidth * 3,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 56),
                          HeadingFont(
                            entertext: "Get The Freshest Fruit Salad Combo",
                          ),
                          SizedBox(height: 10),
                          HeadingFont(
                            entertext:
                            "We deliver the best and freshest fruit salad in\n town. Order for a combo today!!!",
                            enterfontSize: 16,
                            enterColor: Colors.grey,
                            enterWight: FontWeight.w400,

                          ),
                          Spacer(),
                          BigButton(buttonText: "Let’s Continue",giveWidget: AuthenticationScreen(),),
                          SizedBox(height: 88,)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
