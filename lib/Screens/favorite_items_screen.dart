import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fruit_hub_mobile_app/Styles/arrowBack.dart';
import 'package:fruit_hub_mobile_app/Styles/fontstyles.dart';
import 'package:fruit_hub_mobile_app/Styles/item_card.dart';
import 'package:fruit_hub_mobile_app/provider/multiproviders.dart';
import 'package:provider/provider.dart';

class FavoriteItemsScreen extends StatefulWidget {
  const FavoriteItemsScreen({super.key});

  @override
  State<FavoriteItemsScreen> createState() => _FavoriteItemsScreenState();
}

class _FavoriteItemsScreenState extends State<FavoriteItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteListProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          leading: Container(
            height: 20,
            child: Center(child: Arrowback()),
            margin: EdgeInsets.only(left: 10),
          ),
          backgroundColor: Colors.orange,
          leadingWidth: 120,
          title: HeadingFont(
            entertext: "My Favorite",
            enterColor: Colors.white,
            enterfontSize: 24,
          ),
          toolbarHeight: 100,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: ListView.builder(itemBuilder: (context, index) {
            int pindex=value.favIndex[index];
            return Column(
              children: [
                SizedBox(height: 20,),
                ListTile(leading: Image.asset(value.producList[pindex]["image"]),
                  title:HeadingFont(entertext: value.producList[pindex]["name"]) ,
                  trailing: HeartButton(enterIndex: pindex,iconSize: 30,),
                ),
                SizedBox(height: 20,),
                Divider(color: Colors.grey,)
              ],
            );
          },
          itemCount: value.favIndex.length,),
        ),
      ),
    );
  }
}
