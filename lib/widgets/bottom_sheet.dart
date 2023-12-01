import 'package:flutter/material.dart';

Widget buildBottomSheet(
    double screenHeight, double screenWidth,
    Color lightBlue, Color darkBlue, int activeView
    ){
  return Container(
    height: screenHeight*0.07,
    // color: lightBlue,
    decoration: BoxDecoration(
        color: activeView != 4 ? lightBlue : Colors.white
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: screenHeight*0.04,
            width: screenWidth*0.7,
            decoration: BoxDecoration(
                color: activeView != 4 ? Colors.white : lightBlue,
                border: Border.all(
                    color: darkBlue
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Center(
              child: Text(
                "Gesundheitsamt Bochum",
                style: TextStyle(
                    color: activeView != 4 ?lightBlue : Colors.white
                ),
              ),
            )
        )
      ],
    ),
  );
}