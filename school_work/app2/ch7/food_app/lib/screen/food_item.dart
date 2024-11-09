import 'package:flutter/material.dart';
import 'package:food_app/model/food.dart';
import 'package:food_app/screen/food_detail.dart';

class FoodItem extends StatefulWidget {
  Food data;
  FoodItem({super.key, required this.data});

  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => (FoodDetail(data: widget.data)))
        );
      },
      child: Card(
        color: widget.data.colorCard.color,
        elevation: 2,
        shadowColor: widget.data.colorCard.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15,)
              ),
              child: Image.asset(widget.data.image,
              
              width: 120,
              fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 20,),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.name,
                  overflow: TextOverflow.fade,
                  maxLines: 1 ,
                  style:  TextStyle(
                    color: Colors.grey[800],
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.data.price.toString() + " ฿",
                  style:  TextStyle(
                    fontSize: 14,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}