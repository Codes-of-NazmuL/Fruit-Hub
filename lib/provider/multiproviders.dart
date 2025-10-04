import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:ui';


class FavoriteListProvider extends ChangeNotifier
{
  List<int>favIndex=[];

  void favAdder(int giveIndex)
  {
    favIndex.add(giveIndex);
  }

  void favRemover(int giveIndex)
  {
    favIndex.remove(giveIndex);
  }
  List<Map<String,dynamic>>cartList=[
  ];
  void cartAdder(int giveIndex,int amount)
  {
    cartList.add({
      "index":giveIndex,
      "amount":amount,
    });
  }

  void cartRemover(int giveIndex,int amount)
  {
    cartList.remove({
      "index":giveIndex,
      "amount":amount,
    });
  }

  int cartCounterdecre(int itemValue)
  {
    itemValue == 0 || itemValue < 0 ? null : itemValue -= 1;
    return itemValue;
  }

  int cartCounterIncr(int itemValue)
  {
    return itemValue+1;
  }

  bool valueChecker(int giveIndex)
  {
    bool rslt=favIndex.contains(giveIndex)==true?true:false;
    return rslt;
  }

  List<Map>producList=[
    {
      "name":"Quinoa fruit Salad",
      "price":"10,000",
      "image":"asstes/image/img_f (1).png"
    },
    {
      "name":"Tropical fruit salad",
      "price":"10,000",
      "image":"asstes/image/img_f (3).png"
    },
    {
      "name":"melon fruit salad",
      "price":"10,000",
      "image":"asstes/image/img_f (2).png"

    }

  ];

  List<Color>colorList=[Color(0xffFFFAEB),Color(0xffFEF0F0),Color(0xffF1EFF6)];


}