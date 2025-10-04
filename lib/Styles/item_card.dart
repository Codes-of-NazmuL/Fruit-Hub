import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub_mobile_app/Styles/fontstyles.dart';
import 'package:fruit_hub_mobile_app/provider/multiproviders.dart';
import 'package:provider/provider.dart';

class ItemCard extends StatefulWidget {
  final String enterImage;
  final String itemName;
  final String itemPrice;
  final double height;
  final double width;
  final Color? cardColor;
  final int enterindex;
  const ItemCard({
    super.key,
    required this.enterImage,
    required this.itemName,
    required this.itemPrice,
    required this.height,
    required this.width,
    this.cardColor,
    required this.enterindex,
  });

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        color: widget.cardColor == null ? Colors.white : widget.cardColor!,
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
                      SizedBox(width: 5),
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
                child: HeartButton(enterIndex: widget.enterindex),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeartButton extends StatefulWidget {
  final int enterIndex;
  final double? iconSize;
  const HeartButton({super.key, this.iconSize, required this.enterIndex});
  @override
  State<HeartButton> createState() => _HeartButtonState();
}

class _HeartButtonState extends State<HeartButton> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteListProvider>(
      builder: (context, value, child) => IconButton(
        icon: value.valueChecker(widget.enterIndex) == false
            ? Icon(Icons.favorite_border, size: widget.iconSize)
            : Icon(Icons.favorite, size: widget.iconSize),
        color: Colors.orangeAccent,
        onPressed: () {
          setState(() {
            value.valueChecker(widget.enterIndex) == true
                ? value.favRemover(widget.enterIndex)
                : value.favAdder(widget.enterIndex);
          });
        },
      ),
    );
  }
}
