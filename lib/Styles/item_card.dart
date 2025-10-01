import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub_mobile_app/Styles/fontstyles.dart';

class ItemCard extends StatefulWidget {
  final String enterImage;
  final String itemName;
  final String itemPrice;
  final double height;
  final double width;
  const ItemCard({super.key, required this.enterImage,required this.itemName,required this.itemPrice,required this.height,required this.width});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool isTrue=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(

        color: Colors.white,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        elevation: 5,
        child: Container(
          padding: EdgeInsetsGeometry.all(10),
          height: widget.height,
          width: widget.width,
          child: Stack(
            children: [
              Column(
                children: [
                  Spacer(),
                  Image(image: AssetImage(widget.enterImage)),
                  SizedBox(height: 10),
                  HeadingFont(entertext: widget.itemName, enterfontSize: 16),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "asstes/image/naira.svg",
                        height: 12,
                        width: 16,
                        color: Colors.orangeAccent,
                      ),
                      SizedBox(width: 5,),
                      HeadingFont(
                        entertext: widget.itemPrice,
                        enterfontSize: 14,
                        enterColor: Colors.orangeAccent,
                        enterWight: FontWeight.w600,
                      ),
                      Spacer(),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffFFF2E7),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.orangeAccent,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                right: -10,
                top: -10,
                child: IconButton(
                  icon: isTrue==false?Icon(Icons.favorite_border):Icon(Icons.favorite),
                  color: Colors.orangeAccent,
                  onPressed: () {
                    setState(() {
                      isTrue=!isTrue;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
