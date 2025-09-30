import 'package:flutter/material.dart';
import 'package:fruit_hub_mobile_app/Styles/fontstyles.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu,size: 29,)),
        backgroundColor: Colors.white,
        actions: [
          Container(
            margin: EdgeInsets.all(15.0),
            child: Column(
              children: [Icon(Icons.favorite_border,size: 27,color: Colors.orangeAccent,),
              SizedBox(height: 5,),
              HeadingFont(entertext: "Wish list",enterColor: Colors.black,enterfontSize: 10,enterWight: FontWeight.w400,)],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: Column(
              children: [Icon(Icons.shopping_cart_outlined,size: 27,color: Colors.orangeAccent,),
                SizedBox(height: 5,),
                HeadingFont(entertext: "My basket",enterColor: Colors.black,enterfontSize: 10,enterWight: FontWeight.w400,)],
            ),
          )
        ],toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  child: RichText(text: TextSpan(style: TextStyle(
                    fontFamily: "Brandon Grotesque",
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    overflow: TextOverflow.ellipsis
                    ),children:[
                      TextSpan(text: "Hello tonny,"),
                    TextSpan(text: " What fruit salad\ncombo do you want today?",style: TextStyle(
                        fontFamily: "Brandon Grotesque",
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        overflow: TextOverflow.ellipsis
                    ))
                  ] ),),
                )
              ],
            ),
            SizedBox(height: 24,),
            Row(
              children: [
                TextFormField(
                  decoration: InputDecoration(fillColor: Colors.grey,),

                )
              ],
            )
          ],

        ),
      ),

    );
  }
}
