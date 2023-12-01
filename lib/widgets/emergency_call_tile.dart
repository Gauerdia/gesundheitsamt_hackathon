import 'package:flutter/material.dart';

Widget emergencyCallTile(
    double screenWidth, double screenHeight,
    Color lightBlue, darkBlue,
    String textToDisplay,
    String pathToImage
    ) {
  return Container(
    width: screenWidth*0.2,
    height: screenHeight*0.12,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
          color: darkBlue
      ),
    ),
    child: Column(
      children: [
        Container(
          height: screenHeight*0.005,
        ),
        Container(
          height: screenHeight*0.062,
          width: screenWidth*0.2,
          child: Image.asset(pathToImage),
          // color: Colors.yellow,
        ),
        Container(
            height: screenWidth*0.108,
            width: screenWidth*0.2,
            // color: Colors.lightGreen,
            child: Center(
              child: Text(
                textToDisplay,
                style: TextStyle(
                    color: lightBlue
                ),
                textAlign: TextAlign.center,
              ),
            )
        )
      ],
    ),
  );
}
