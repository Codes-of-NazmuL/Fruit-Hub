import 'package:flutter/material.dart';
import 'package:fruit_hub_mobile_app/Styles/fontstyles.dart';
import 'package:fruit_hub_mobile_app/Styles/item_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double dspwidth = MediaQuery.of(context).size.width;
    double dspheight = MediaQuery.of(context).size.height;
    Orientation dvOriententation = MediaQuery.of(context).orientation;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu, size: 29),
          ),
          backgroundColor: Colors.white,
          actions: [
            Container(
              margin: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Icon(
                    Icons.favorite_border,
                    size: 27,
                    color: Colors.orangeAccent,
                  ),
                  SizedBox(height: 5),
                  HeadingFont(
                    entertext: "Wish list",
                    enterColor: Colors.black,
                    enterfontSize: 10,
                    enterWight: FontWeight.w400,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 27,
                    color: Colors.orangeAccent,
                  ),
                  SizedBox(height: 5),
                  HeadingFont(
                    entertext: "My basket",
                    enterColor: Colors.black,
                    enterfontSize: 10,
                    enterWight: FontWeight.w400,
                  ),
                ],
              ),
            ),
          ],
          toolbarHeight: 80,
        ),
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 70,
                  width: double.maxFinite,
                  child: Expanded(
                    child: Row(
                      children: [
                        HeadingFont(
                          entertext:
                              "Hello Tony, What fruit salad\ncombo do you want today?",
                        ),
                        // RichText(
                        //   text: TextSpan(
                        //     style: TextStyle(
                        //       fontFamily: "Brandon Grotesque",
                        //       fontWeight: FontWeight.w400,
                        //       fontSize: 22,
                        //       overflow: TextOverflow.ellipsis,
                        //     ),
                        //     children: [
                        //       TextSpan(text: "Hello tonny,"),
                        //       TextSpan(
                        //         text: " What fruit salad\ncombo do you want today?",
                        //         style: TextStyle(
                        //           fontFamily: "Brandon Grotesque",
                        //           fontWeight: FontWeight.w600,
                        //           fontSize: 22,
                        //           overflow: TextOverflow.ellipsis,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // Spacer()
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: dvOriententation == Orientation.landscape
                            ? 60
                            : dspheight * .06,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xffF3F4F9),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search, size: 16),
                            SizedBox(width: 15),
                            HeadingFont(
                              entertext: "Search for fruit salad combos",
                              enterfontSize: 14,
                              enterColor: Colors.grey,
                              enterWight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 24),
                    Icon(Icons.tune, size: 30),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: HeadingFont(
                  entertext: "Recommended Combo",
                  enterfontSize: 24,
                ),
              ),
              SizedBox(height: 24),
              SizedBox(
                height: 190,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ItemCard(
                      height:183 ,
                      width: 152,
                      enterImage: "asstes/image/quinoa.png",
                      itemName: "Honey",
                      itemPrice: "200",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              TabBar(
                tabs: [
                  Text("Hottest"),
                  Text("Popular"),
                  Text("New combo"),
                  Text("Top"),
                ],
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.black,
                padding: EdgeInsets.all(10),
                indicatorColor: Colors.orangeAccent,
                indicatorPadding: EdgeInsetsGeometry.only(top: 20),
                dividerColor: Colors.transparent,
                labelPadding: EdgeInsets.only(bottom: 10),
                indicatorWeight: 2,
                labelStyle: TextStyle(
                  fontFamily: "Brandon Grotesque",
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
                unselectedLabelStyle: TextStyle(
                  fontFamily: "Brandon Grotesque",
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Spacer(),
              SizedBox(
                height:180  ,
                child: ListView.builder(itemBuilder: (context, index)
                {
                  return ItemCard(enterImage: "asstes/image/quinoa.png", itemName: "Quinna", itemPrice: "200", height: 160, width: 150);
                },
                itemCount: 10,scrollDirection: Axis.horizontal,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
