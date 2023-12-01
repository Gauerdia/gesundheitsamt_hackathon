
import 'package:flutter/material.dart';

Widget buildBasicTile(
    double screenHeight, double screenWidth,
    Color lightBlue, Color darkBlue,
    String imagePath, String textToDisplay,
    imageSizeFactor
    ){

  double totalHeight = screenHeight*0.2;
  double totalWidth = screenWidth*0.4;

  return Container(
    // color: Colors.blue,
    width: totalWidth,
    height: totalHeight,
    decoration: BoxDecoration(
        color: lightBlue,
        border: Border.all(
            color: darkBlue
        ),
        borderRadius: BorderRadius.all(Radius.circular(10))
    ),
    child: Column(
      children: [
        Container(
          height: totalHeight*0.1,
          // color: Colors.red,
        ),
        Container(
          height: totalHeight*0.7,
          // color: Colors.yellow,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: totalWidth*0.7,
                  height: totalHeight*0.7,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: darkBlue
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        imagePath,
                        width: totalWidth*imageSizeFactor,
                      ),
                    ],
                  )
              ),
            ],
          ),
        ),
        Container(
            height: totalHeight*0.18,
            // color: Colors.white30,
            child: Center(
              child: Text(
                textToDisplay,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
            )
        ),
      ],
    ),
  );
}
