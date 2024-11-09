import 'package:flutter/material.dart';
import 'package:food_app/model/food.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDetail extends StatefulWidget {
  Food data;
  FoodDetail({super.key,required this.data});

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data.name),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              
              child: Image.asset(widget.data.image)
              ),
            ),
            SizedBox(height: 22),
            Text(
              widget.data.name,
              style: GoogleFonts.ubuntu(
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )
              ),
            ),
            Text(
              widget.data.price.toString() + " ฿",
            ),
            SizedBox(height: 22),
            Text(
              widget.data.detail,
              maxLines: 8,
              overflow: TextOverflow.fade,
            ),
        ],
      ),
    );
  }
}