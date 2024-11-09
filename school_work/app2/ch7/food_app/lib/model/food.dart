import 'dart:ffi';

import 'package:flutter/material.dart';
enum ColorCard {

  cardColor1,
  cardColor2,
}
extension ColorCardExtention on ColorCard{
  Color get color{
    switch(this){
      case ColorCard.cardColor1:
        return Color(0xFFF8BBD0);
      case ColorCard.cardColor2:
        return Color(0xFFB2DFDB);
      default:
        return Colors.white;
    }
    
  }
  

  String get colorName {
    switch (this) {
      case ColorCard.cardColor1:
        return "Pink";
      case ColorCard.cardColor2:
        return "Teal";
      default:
        return "Unknown";
    }
  }

}


class Food {
  String name;
  String image;
  String detail;
  int price;
  ColorCard colorCard;
  Food(
    this.name,
    this.image,
    this.detail,
    this.price,
    this.colorCard,
  );
}
List<Food> foodData = [
    Food(
      "Katna Mookrob", 
      "assets/imgs/1-katna-mookrob.jpg", 
      "Thai food",
      59,
      ColorCard.cardColor1
      ),
    Food(
      "Krapow Moosab", 
      "assets/imgs/3-krapow-moosab.jpg", 
      "Thai food",
      79,
      ColorCard.cardColor2
      ),
    Food(
      "Krapow Taklee", 
      "assets/imgs/2-krapow-taklee.jpg", 
      "Thai food",
      69,
      ColorCard.cardColor1
      ),
      Food(
      "Japan Curry", 
      "assets/imgs/7-kheng-kari-japan.jpg", 
      "Thai food",
      65,
      ColorCard.cardColor2
      ),
    Food(
      "Pla Mor KhangDam", 
      "assets/imgs/8-pla-mor-khang-dam.jpg", 
      "Thai food",
      69,
      ColorCard.cardColor1
      ),
    Food(
      "Pad Thai Koong", 
      "assets/imgs/10-pad-thai.jpg", 
      "Thai food",
      60,
      ColorCard.cardColor2
      ),
      Food(
      "Pad Vonsen", 
      "assets/imgs/6-pad-vonsen.jpg", 
      "Thai food",
      55,
      ColorCard.cardColor1
      ),
    Food(
      "Tom Yam Noodle", 
      "assets/imgs/4-Noodle-tom-yam.jpg", 
      "Thai food",
      69,
      ColorCard.cardColor2
      ),
    Food(
      "Noodle Khakaitoon", 
      "assets/imgs/5-noodle-khakaitoon.jpg", 
      "Thai food",
      49,
      ColorCard.cardColor1
      ),
    Food(
      "Kaew Koong", 
      "assets/imgs/9-kaew-koong.jpg", 
      "Thai food",
      59,
      ColorCard.cardColor2
      ),
    
  ];
  