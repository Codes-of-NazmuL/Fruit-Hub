import 'package:flutter/material.dart';
import 'package:fruit_hub_mobile_app/Screens/home_screen.dart';
import 'package:fruit_hub_mobile_app/Styles/buttons.dart';
import 'package:fruit_hub_mobile_app/Styles/fontstyles.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});
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
                          "asstes/image/fruit_2.png",
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
                          HeadingFont(entertext: "What is your firstname?"),
                          SizedBox(height: 15),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              fillColor: Color(0xffF3F1F1),
                              filled: true,
                              hintText: "Tony",
                              contentPadding: EdgeInsets.all(20),
                            ),
                          ),
                          Spacer(),
                          BigButton(buttonText: "Start Ordering",giveWidget: HomeScreen(),),
                          SizedBox(height: 88),
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
                          HeadingFont(entertext: "What is your firstname?"),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              fillColor: Color(0xffF3F1F1),
                              filled: true,
                              hintText: "Tony",
                              contentPadding: EdgeInsets.all(20),
                            ),
                          ),
                          Spacer(),
                          BigButton(buttonText: "Start Ordering",giveWidget: HomeScreen(),),
                          SizedBox(height: 88),
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
