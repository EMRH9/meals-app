import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FoodItem extends StatelessWidget {
  FoodItem(
      {required this.availability,
      required this.hardness,
      required this.time,
      required this.imageUrl,
      super.key,
      required this.mealTitle});
  final String mealTitle;
  final imageUrl;
  final String time;
  final String hardness;
  final String availability;

  String assetfile = "assets/placeholder.jpg";
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Stack(
        children: [
          Container(
            height: 200,
            child: FadeInImage.assetNetwork(
              fit: BoxFit.cover,
              placeholderFit: BoxFit.fitWidth,
              placeholder: assetfile,
              image: imageUrl,
              width: width,
            ),
          ),
          Positioned(
            bottom: 0,
            width: width,
            height: 70,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.60),
              ),
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    mealTitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:
                          Theme.of(context).textTheme.titleLarge!.fontSize,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        time,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.work),
                      SizedBox(
                        width: 5,
                      ),
                      Text(hardness, style: TextStyle(color: Colors.white)),
                      SizedBox(
                        width: 10,
                      ),
                      Text(availability, style: TextStyle(color: Colors.white)),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
