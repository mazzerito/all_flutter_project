import 'package:flutter/material.dart';
import 'package:food_app/screen/food_item.dart';

import '../model/food.dart';

class FoodListview extends StatefulWidget {
  const FoodListview({super.key});

  @override
  State<FoodListview> createState() => _FoodListviewState();
}

class _FoodListviewState extends State<FoodListview> {
  
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: foodData.length,
      itemBuilder: (context,index){
        return FoodItem(data: foodData[index]);

    });
  }
}