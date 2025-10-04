import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub_mobile_app/Styles/counter_buttons.dart';
import 'package:fruit_hub_mobile_app/Styles/fontstyles.dart';
import 'package:fruit_hub_mobile_app/Styles/item_card.dart';
import 'package:fruit_hub_mobile_app/provider/multiproviders.dart';
import 'package:provider/provider.dart';

class ItemScreen extends StatefulWidget {
  final int enterIndex;
  const ItemScreen( {super.key,required this.enterIndex});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  late double screenheight = MediaQuery.of(context).size.height;
  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteListProvider>(builder: (context, value, child) => Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Container(
            height: screenheight,
            child: Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20),
                      InkWell(
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
                      ),
                    ],
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.transparent,
                      child: Image.asset(value.producList[widget.enterIndex]["image"]),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                      ),
                      child: Expanded(
                        child: Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            width: double.infinity,
                            child: Column(
                              children: [
                                SizedBox(height: 40),
                                Row(
                                  children: [
                                    HeadingFont(
                                      entertext: value.producList[widget.enterIndex]["name"],
                                      enterfontSize: 32,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CounterButtons(),
                                    Spacer(),
                                    SvgPicture.asset(
                                      "asstes/image/naira.svg",
                                      color: Colors.black,
                                    ),
                                    SizedBox(width: 5),
                                    HeadingFont(entertext: value.producList[widget.enterIndex]["price"]),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Divider(color: Colors.grey),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IntrinsicWidth(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          HeadingFont(
                                            entertext: "One Pack Contains",
                                            enterColor: Color(0xFF27214D),
                                          ),
                                          Container(
                                            height: 2,
                                            color: Colors.orangeAccent,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 35),
                                IntrinsicHeight(
                                  child: Container(
                                    width: double.maxFinite,
                                    child: HeadingFont(
                                      entertext:
                                          "Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.",
                                      enterfontSize: 16,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Divider(color: Colors.grey),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    HeadingFont(
                                      entertext:
                                          "If you are looking for a new fruit salad to eat today,\nquinoa is the perfect brunch for you. make",
                                      enterfontSize: 14,
                                      enterWight: FontWeight.w400,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 44),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                        Container(
                                          height: 56,
                                          width: 56,
                                          decoration: BoxDecoration(
                                            color: Color(0xffFFF7F0),
                                            shape: BoxShape.circle
                                          ),
                                          child: HeartButton(iconSize: 35,enterIndex:widget.enterIndex,),
                                        ),
                                      Spacer(),
                                      InkWell(
                                        child: Container(
                                          height: 60,
                                          width: 220,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              15,
                                            ),
                                            color: Colors.orange,
                                          ),
                                          child: Center(
                                            child: HeadingFont(
                                              entertext: "Add to Basket",
                                              enterColor: Colors.white,
                                              enterfontSize: 18,
                                              enterWight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    )
    );
  }
}
