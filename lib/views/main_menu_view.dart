import 'package:flutter/material.dart';
// import 'package:flutter_image_slideshow_test/flutter_image_slideshow.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../widgets/basic_tile.dart';
import '../widgets/emergency_call_tile.dart';

Widget buildCarousel(double screenHeight, double screenWidth){

  final List<String> imgList = [
    "assets/images/img.png",
    "assets/images/img_1.png",
    "assets/images/img_2.png",
    "assets/images/img_3.png",
  ];


  return CarouselSlider(
    options: CarouselOptions(
      // height: 400.0,
      height: screenHeight*1,
      autoPlay: true,
      // enlargeFactor: 41
    ),

    items: imgList.map((i) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
              width: screenWidth,
              // margin: EdgeInsets.symmetric(horizontal: 5.0),
              // decoration: BoxDecoration(
              //     color: Colors.amber
              // ),
              child: Image.asset(
                i,
                scale: 2,
              )
          );
        },
      );
    }).toList(),

    // items: [1,2,3,4,5].map((i) {
    //   return Builder(
    //     builder: (BuildContext context) {
    //       return Container(
    //           width: MediaQuery.of(context).size.width,
    //           margin: EdgeInsets.symmetric(horizontal: 5.0),
    //           decoration: BoxDecoration(
    //               color: Colors.amber
    //           ),
    //           child: Text('text $i', style: TextStyle(fontSize: 16.0),)
    //       );
    //     },
    //   );
    // }).toList(),

  );
}

Widget buildOneMinuteWonder(double screenHeight, double screenWidth, Color lightBlue, Color darkBlue){

  double totalWidth = 0.95 * screenWidth;
  double totalHeight = 0.35 * screenWidth;

  double imageHeight = screenHeight*0.1;
  double imageWidth  = screenWidth*0.9;

  double headDistance = screenHeight* 0.015;
  double footDistance = screenHeight*0.044;

  double leftDistance = screenWidth*0.02;
  double rightDistance = screenWidth*0.02;

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
        SizedBox(height: headDistance),
        Row(
          children: [
            SizedBox(width: leftDistance),
            Container(
              height: imageHeight,
              width: imageWidth,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: darkBlue
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Image.asset("assets/images/gluehbirne.png"),
            ),
            SizedBox(width: rightDistance),
          ],
        ),
        Container(
          // color: Colors.red,
            height: footDistance,
            child: Center(
              child: Text(
                "1 Minute Wonder",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
              ),
            )
        )
      ],
    ),
  );
}




class MainMenuView extends StatelessWidget {

  MainMenuView({
    required this.screenHeight,
    required this.screenWidth,
    required this.lightBlue,
    required this.darkBlue,
    required this.toggleActiveView,
    required this.emergencyPhoneNumbersActive,
    required this.toggleEmergencyActive
  });

  double screenHeight, screenWidth;
  Color lightBlue, darkBlue;
  Function(int) toggleActiveView;
  Function() toggleEmergencyActive;
  bool emergencyPhoneNumbersActive;

  // bool emergencyClicked = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Center(

            child: Column(
              children: <Widget>[

                SizedBox(
                  height: screenHeight*0.02,
                ),
                Container(
                  child: GestureDetector(
                    child: buildOneMinuteWonder(
                        screenHeight, screenWidth,
                        lightBlue, darkBlue),
                    onTap: () => toggleActiveView(4),
                  )
                ),
                SizedBox(
                  height: screenHeight*0.02,
                ),
                Container(
                  // color: Colors.blue,
                  width: screenWidth*0.95,
                  height: screenHeight*0.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                        buildBasicTile(
                          screenHeight, screenWidth, lightBlue,
                          darkBlue, "assets/images/mic.png", "Sprachassistent",
                          0.45
                        ),

                      GestureDetector(
                        child: buildBasicTile(
                            screenHeight, screenWidth, lightBlue,
                            darkBlue, "assets/images/telephone.png", "Notfallnummern",
                            0.6
                        ),
                        onTap: () => {
                          toggleEmergencyActive()
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight*0.02,
                ),
                Container(
                  // color: Colors.blue,
                  width: screenWidth*0.95,
                  height: screenHeight*0.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      GestureDetector(
                        child: buildBasicTile(
                          screenHeight, screenWidth, lightBlue,
                          darkBlue, "assets/images/plus.png", "Meine Gesundheit",
                          0.55
                      ),
                      onTap: () => toggleActiveView(3),
                      ),


                      GestureDetector(
                        child: buildBasicTile(
                            screenHeight, screenWidth, lightBlue,
                            darkBlue, "assets/images/book.png", "Vorsorge-Checkheft",
                            0.45
                        ),
                        onTap: () => toggleActiveView(2),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: screenHeight*0.02,
                ),

                Container(
                  child: Image.asset(
                      "assets/images/carousel_test_1.png",
                    scale: 1.5,
                  ),
                )
                
              ],
            ),
          ),

          // Dog
          GestureDetector(
            child: Container(
              child: Image.asset(
                "assets/images/dog_cut1.png",
                scale: 2,
              ),
              padding: EdgeInsets.only(bottom: 54),
              alignment: Alignment.bottomRight,
            ),
            onTap: () => toggleActiveView(1),
          ),

          // Bubble with exclamation mark
          GestureDetector(
            child: Container(
              padding: EdgeInsets.only(
                  left: screenWidth*0.6,
                  top: screenHeight*0.6
              ),
              child: Container(
                height: screenHeight*0.1,
                width: screenWidth*0.2,
                alignment: Alignment.center,
                // color: Colors.red,
                child: Center(
                  child: Text(
                    "!",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 60
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                        color: darkBlue
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(90))
                ),
              ),
            ),
            onTap: () => toggleActiveView(1),
          ),

          // Small bubble
          GestureDetector(
            child: Container(
              padding: EdgeInsets.only(
                  left: screenWidth*0.74,
                  top: screenHeight*0.71
              ),
              child: Container(
                height: screenHeight*0.02,
                width: screenWidth*0.05,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                        color: darkBlue
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(90))
                ),
              ),
            ),
            onTap: () => toggleActiveView(1),
          ),

          // Grey layer when emergency clicked
          emergencyPhoneNumbersActive ?
              GestureDetector(
                child: Container(
                  width: screenWidth,
                  height: screenHeight,
                  color: Colors.grey.withOpacity(0.5),
                ),
                onTap: () => {
                  toggleEmergencyActive()
                }
              )
              :Container(),

          // Emergency phone numbers
          emergencyPhoneNumbersActive ? Padding(
            padding: EdgeInsets.only(
              top: screenHeight*0.41,
              left: screenWidth*0.02,
              right: screenWidth*0.02
            ),
            child: Container(
              width: screenWidth,
              height: screenHeight*0.2,

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
                    width: screenWidth,
                    height: screenHeight*0.04,
                    // color: Colors.green,
                    child: Center(
                      child: Text(
                        "Notfallnummern",
                        style: TextStyle(
                            color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      emergencyCallTile(
                          screenWidth, screenHeight,
                          lightBlue, darkBlue,
                          "Schnelle Hilfe", "assets/images/person.png"
                      ),

                      emergencyCallTile(
                          screenWidth, screenHeight,
                          lightBlue, darkBlue,
                          "Giftnotruf", "assets/images/skull.png"
                      ),

                      emergencyCallTile(
                          screenWidth, screenHeight,
                          lightBlue, darkBlue,
                          "Seelsorge", "assets/images/prevention.png"
                      ),

                      emergencyCallTile(
                          screenWidth, screenHeight,
                          lightBlue, darkBlue,
                          "Kranken haus", "assets/images/hospital.png"
                      ),

                      // Container(
                      //   width: screenWidth*0.2,
                      //   height: screenHeight*0.12,
                      //   color: Colors.cyan,
                      // ),
                      // Container(
                      //   width: screenWidth*0.2,
                      //   height: screenHeight*0.12,
                      //   color: Colors.cyan,
                      // ),
                      // Container(
                      //   width: screenWidth*0.2,
                      //   height: screenHeight*0.12,
                      //   color: Colors.cyan,
                      // )
                    ],
                  )
                ],
              )
            ),
          ) : Container()
        ],
      ),
    );
  }
}
