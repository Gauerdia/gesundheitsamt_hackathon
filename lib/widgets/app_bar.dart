import 'package:flutter/material.dart';

AppBar buildAppBar(
    Color lightBlue,
    bool backButtonActive,
    Function (int) toggleActiveView,
    int activeView
    ){
  return AppBar(
    title: Center(
      child: Text("Health-E",
        style: TextStyle(
            color: activeView != 4 ? Colors.white : lightBlue,
            fontWeight: FontWeight.bold
        ),
      ),
    ),
    backgroundColor: activeView != 4 ? lightBlue : Colors.white,
    leading: Container(
      padding: EdgeInsets.only(
        top: 5
      ),
      child: backButtonActive? GestureDetector(
        child: Image.asset(
          "assets/images/back_arrow.png",
          scale: 5,
        ),
        onTap: () => toggleActiveView(0),
      ) : Container()
    ),
    actions: [
      Container(
        child: Icon(
          Icons.search,
          color: activeView != 4 ? Colors.white : lightBlue,
          size: 32,
        ),
        padding: EdgeInsets.only(
            right: 10
        ),
      )
    ],
  );
}