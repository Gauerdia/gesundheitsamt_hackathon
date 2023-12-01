import 'package:flutter/material.dart';

class DogClickedView extends StatefulWidget {

  DogClickedView({
    required this.screenHeight,
    required this.screenWidth,
    required this.lightBlue,
    required this.darkBlue,
    required this.toggleActiveView,
  });

  final double screenHeight, screenWidth;
  Color lightBlue, darkBlue;
  Function (int) toggleActiveView;

  @override
  State<DogClickedView> createState() => _DogClickedViewState();
}

class _DogClickedViewState extends State<DogClickedView> {

  late final double screenHeight, screenWidth;
  late Color lightBlue, darkBlue;

  int whatToDisplay = 0;

  Widget first(){
    return Column(
      children: [

        Padding(
          padding: EdgeInsets.only(
              top: screenHeight*0.1,
              left: screenWidth*0.1,
              right: screenWidth*0.1
          ),
          child: Text("Ich habe gesehen, dass du lange keine Tetanus-Impfung mehr hattest."
              " Möchtst du jetzt bei deiner Hausärztin, Fr. Dr. Liederwald, anrufen und einen"
              "Termin vereinbaren, oder soll ich das für dich machen?",
            style: TextStyle(
                fontSize: 18
            ),
          ),
        ),

        SizedBox(
          height: screenHeight*0.06,
        ),

        Container(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              GestureDetector(
                child: Container(
                    width: screenWidth*0.38,
                    height: screenHeight*0.05,
                    // color: lightBlue,
                    decoration: const BoxDecoration(
                        color: Colors.lightBlue,
                        // border: Border.all(
                        //     color: darkBlue
                        // ),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: const Center(
                      child: Text(
                        "Anrufen",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                ),
                onTap: () => toggleProgress(),
              ),

              GestureDetector(
                child: Container(
                    width: screenWidth*0.38,
                    height: screenHeight*0.05,
                    // color: lightBlue,
                    decoration: const BoxDecoration(
                        color: Colors.lightBlue,
                        // border: Border.all(
                        //     color: darkBlue
                        // ),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child:  Padding(
                      padding: EdgeInsets.only(
                        left: screenWidth*0.05,
                      ),
                      child:  const Center(
                        child: Text(
                          "KI-Assistent Termin vereinbaren lassen",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    )
                ),
                onTap: () => toggleProgress(),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget second(){
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: screenHeight*0.1,
            // left: screenWidth*0.1,
            // right: screenWidth*0.1
          ),
          child: Row(
            children: [
              SizedBox(
                width: screenWidth*0.1,
              ),
              Image.asset(
                "assets/images/klemmbrett.png",
                scale: 2,
              ),
              SizedBox(
                width: screenWidth*0.1,
              ),
              Image.asset(
                "assets/images/agenda.png",
                scale: 1.8,
              )
            ],
          ),
        ),
        SizedBox(
          height: screenHeight*0.02,
        ),
        Row(
          children: [
            SizedBox(
              width: screenWidth*0.04,
            ),
            Container(
                width: screenWidth*0.4,
                child: Center(
                  child: Text(
                    "Regelmäßig verfügbare Tage eintragen",
                    style: TextStyle(
                        color: lightBlue,
                        fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
            ),
            SizedBox(
              width: screenWidth*0.04,
            ),
            Container(
              width: screenWidth*0.35,
              child: Text(
                "Einzelne verfügbare Tage eintragen",
                style: TextStyle(
                    color: lightBlue,
                    fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenHeight*0.07,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            GestureDetector(
              child: Container(
                  width: screenWidth*0.35,
                  height: screenHeight*0.05,
                  decoration: BoxDecoration(
                      color: lightBlue,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Center(
                    child: Text("Weiter",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                  )
              ),
              onTap: () => toggleProgress(),
            )

          ],
        )
      ],
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

  void toggleProgress(){
    setState(() {
      whatToDisplay += 1;
      if(whatToDisplay > 1){
        widget.toggleActiveView(0);
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    try{
      screenHeight = widget.screenHeight;
      screenWidth = widget.screenWidth;
      lightBlue = widget.lightBlue;
      darkBlue = widget.darkBlue;
    }catch(e){
      print(e);
    }


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
                    child: buildOneMinuteWonder(
                        screenHeight, screenWidth,
                        lightBlue, darkBlue),
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
                        buildBasicTile(
                            screenHeight, screenWidth, lightBlue,
                            darkBlue, "assets/images/telephone.png", "Notfallnummern",
                            0.6
                        ),
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
                        buildBasicTile(
                            screenHeight, screenWidth, lightBlue,
                            darkBlue, "assets/images/plus.png", "Meine Gesundheit",
                            0.55
                        ),
                        buildBasicTile(
                            screenHeight, screenWidth, lightBlue,
                            darkBlue, "assets/images/book.png", "Vorsorge-Checkheft",
                            0.45
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Grey Layer
            Container(
              height: screenHeight,
              width: screenWidth,
              color: Colors.grey.withOpacity(0.4),
            ),

            // Dog
            Container(
              child: Image.asset(
                "assets/images/dog_wobg.png",
                scale: 1.2,
              ),
              padding: EdgeInsets.only(top: 100),
              alignment: Alignment.bottomRight,
            ),

            // Dialog Window
            Padding(
              padding: EdgeInsets.only(top: screenHeight*0.07),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: screenWidth*0.9,
                      height: screenHeight*0.45,
                      // color: Colors.red,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: darkBlue
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: whatToDisplay == 0 ?
                      first() : whatToDisplay == 1 ? second()
                          : Container()


                  ),
                ],
              ),
            ),

            // Big bubble
            Padding(
              padding: EdgeInsets.only(
                  top: screenHeight*0.525,
                  left: screenWidth*0.45
              ),
              child: Container(
                width: screenWidth*0.14,
                height: screenHeight*0.07,
                decoration:  BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: darkBlue
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(90))
                ),
              ),
            ),

            // Small bubble
            Padding(
              padding: EdgeInsets.only(
                  top: screenHeight*0.585,
                  left: screenWidth*0.565
              ),
              child: Container(
                width: screenWidth*0.08,
                height: screenHeight*0.04,
                decoration:  BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: darkBlue
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(90))
                ),
              ),
            )
          ]
      ),
    );
  }
}


//
// class DogClickedView extends StatelessWidget {
//   DogClickedView({
//     required this.screenHeight,
//     required this.screenWidth,
//     required this.lightBlue,
//     required this.darkBlue
//   });
//
//   late final double screenHeight, screenWidth;
//   late Color lightBlue, darkBlue;
//
//   int whatToDisplay = 1;
//
//
//   Widget buildOneMinuteWonder(double screenHeight, double screenWidth, Color lightBlue, Color darkBlue){
//
//     double totalWidth = 0.95 * screenWidth;
//     double totalHeight = 0.35 * screenWidth;
//
//     double imageHeight = screenHeight*0.1;
//     double imageWidth  = screenWidth*0.9;
//
//     double headDistance = screenHeight* 0.015;
//     double footDistance = screenHeight*0.044;
//
//     double leftDistance = screenWidth*0.02;
//     double rightDistance = screenWidth*0.02;
//
//     return Container(
//       // color: Colors.blue,
//       width: totalWidth,
//       height: totalHeight,
//       decoration: BoxDecoration(
//           color: lightBlue,
//           border: Border.all(
//               color: darkBlue
//           ),
//           borderRadius: BorderRadius.all(Radius.circular(10))
//       ),
//
//       child: Column(
//         children: [
//           SizedBox(height: headDistance),
//           Row(
//             children: [
//               SizedBox(width: leftDistance),
//               Container(
//                 height: imageHeight,
//                 width: imageWidth,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(
//                         color: darkBlue
//                     ),
//                     borderRadius: BorderRadius.all(Radius.circular(10))
//                 ),
//                 child: Image.asset("assets/images/gluehbirne.png"),
//               ),
//               SizedBox(width: rightDistance),
//             ],
//           ),
//           Container(
//             // color: Colors.red,
//               height: footDistance,
//               child: Center(
//                 child: Text(
//                   "1 Minute Wonder",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18
//                   ),
//                 ),
//               )
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget buildBasicTile(
//       double screenHeight, double screenWidth,
//       Color lightBlue, Color darkBlue,
//       String imagePath, String textToDisplay,
//       imageSizeFactor
//       ){
//
//     double totalHeight = screenHeight*0.2;
//     double totalWidth = screenWidth*0.4;
//
//     return Container(
//       // color: Colors.blue,
//       width: totalWidth,
//       height: totalHeight,
//       decoration: BoxDecoration(
//           color: lightBlue,
//           border: Border.all(
//               color: darkBlue
//           ),
//           borderRadius: BorderRadius.all(Radius.circular(10))
//       ),
//       child: Column(
//         children: [
//           Container(
//             height: totalHeight*0.1,
//             // color: Colors.red,
//           ),
//           Container(
//             height: totalHeight*0.7,
//             // color: Colors.yellow,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                     width: totalWidth*0.7,
//                     height: totalHeight*0.7,
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         border: Border.all(
//                             color: darkBlue
//                         ),
//                         borderRadius: BorderRadius.all(Radius.circular(10))
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           imagePath,
//                           width: totalWidth*imageSizeFactor,
//                         ),
//                       ],
//                     )
//                 ),
//               ],
//             ),
//           ),
//           Container(
//               height: totalHeight*0.18,
//               // color: Colors.white30,
//               child: Center(
//                 child: Text(
//                   textToDisplay,
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold
//                   ),
//                 ),
//               )
//           ),
//         ],
//       ),
//     );
//   }
//
//
//   Widget first(){
//     return Column(
//       children: [
//
//         Padding(
//           padding: EdgeInsets.only(
//               top: screenHeight*0.1,
//               left: screenWidth*0.1,
//               right: screenWidth*0.1
//           ),
//           child: Text("Ich habe gesehen, dass du lange keine Tetanus-Impfung mehr hattest."
//               " Möchtst du jetzt bei deiner Hausärztin, Fr. Dr. Liederwald, anrufen und einen"
//               "Termin vereinbaren, oder soll ich das für dich machen?",
//             style: TextStyle(
//                 fontSize: 18
//             ),
//           ),
//         ),
//
//         SizedBox(
//           height: screenHeight*0.06,
//         ),
//
//         Container(
//           alignment: Alignment.bottomCenter,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Container(
//                   width: screenWidth*0.38,
//                   height: screenHeight*0.05,
//                   // color: lightBlue,
//                   decoration: const BoxDecoration(
//                       color: Colors.lightBlue,
//                       // border: Border.all(
//                       //     color: darkBlue
//                       // ),
//                       borderRadius: BorderRadius.all(Radius.circular(10))
//                   ),
//                   child: const Center(
//                     child: Text(
//                       "Anrufen",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold
//                       ),
//                     ),
//                   )
//               ),
//
//               Container(
//                   width: screenWidth*0.38,
//                   height: screenHeight*0.05,
//                   // color: lightBlue,
//                   decoration: const BoxDecoration(
//                       color: Colors.lightBlue,
//                       // border: Border.all(
//                       //     color: darkBlue
//                       // ),
//                       borderRadius: BorderRadius.all(Radius.circular(10))
//                   ),
//                   child:  Padding(
//                     padding: EdgeInsets.only(
//                       left: screenWidth*0.05,
//                     ),
//                     child:  const Center(
//                       child: Text(
//                         "KI-Assistent Termin vereinbaren lassen",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold
//                         ),
//                       ),
//                     ),
//                   )
//               )
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget second(){
//     return Column(
//       children: [
//         Padding(
//           padding: EdgeInsets.only(
//               top: screenHeight*0.1,
//               // left: screenWidth*0.1,
//               // right: screenWidth*0.1
//           ),
//           child: Row(
//             children: [
//               SizedBox(
//                 width: screenWidth*0.1,
//               ),
//               Image.asset(
//                   "assets/images/klemmbrett.png",
//                 scale: 2,
//               ),
//               SizedBox(
//                 width: screenWidth*0.1,
//               ),
//               Image.asset(
//                 "assets/images/agenda.png",
//               scale: 1.8,
//               )
//             ],
//           ),
//         ),
//         SizedBox(
//           height: screenHeight*0.02,
//         ),
//         Row(
//           children: [
//             SizedBox(
//               width: screenWidth*0.04,
//             ),
//             Container(
//               width: screenWidth*0.4,
//               child: Center(
//                 child: Text(
//                   "Regelmäßig verfügbare Tage eintragen",
//                   style: TextStyle(
//                     color: lightBlue,
//                     fontWeight: FontWeight.bold
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               )
//             ),
//             SizedBox(
//               width: screenWidth*0.04,
//             ),
//             Container(
//              width: screenWidth*0.35,
//               child: Text(
//                   "Einzelne verfügbare Tage eintragen",
//                 style: TextStyle(
//                     color: lightBlue,
//                     fontWeight: FontWeight.bold
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ],
//         ),
//         SizedBox(
//           height: screenHeight*0.07,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Container(
//               width: screenWidth*0.35,
//               height: screenHeight*0.05,
//               decoration: BoxDecoration(
//                 color: lightBlue,
//                   borderRadius: BorderRadius.all(Radius.circular(10))
//               ),
//               child: Center(
//                 child: Text("Weiter",
//                   style: TextStyle(
//                       color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16
//                   ),
//                 ),
//               )
//             )
//           ],
//         )
//       ],
//     );
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Stack(
//             children: [
//
//               Center(
//                 child: Column(
//                   children: <Widget>[
//
//                     SizedBox(
//                       height: screenHeight*0.02,
//                     ),
//                     Container(
//                       child: buildOneMinuteWonder(
//                           screenHeight, screenWidth,
//                           lightBlue, darkBlue),
//                     ),
//                     SizedBox(
//                       height: screenHeight*0.02,
//                     ),
//                     Container(
//                       // color: Colors.blue,
//                       width: screenWidth*0.95,
//                       height: screenHeight*0.2,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           buildBasicTile(
//                               screenHeight, screenWidth, lightBlue,
//                               darkBlue, "assets/images/mic.png", "Sprachassistent",
//                               0.45
//                           ),
//                           buildBasicTile(
//                               screenHeight, screenWidth, lightBlue,
//                               darkBlue, "assets/images/telephone.png", "Notfallnummern",
//                               0.6
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: screenHeight*0.02,
//                     ),
//                     Container(
//                       // color: Colors.blue,
//                       width: screenWidth*0.95,
//                       height: screenHeight*0.2,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           buildBasicTile(
//                               screenHeight, screenWidth, lightBlue,
//                               darkBlue, "assets/images/plus.png", "Meine Gesundheit",
//                               0.55
//                           ),
//                           buildBasicTile(
//                               screenHeight, screenWidth, lightBlue,
//                               darkBlue, "assets/images/book.png", "Vorsorge-Checkheft",
//                               0.45
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//
//               // Grey Layer
//               Container(
//                 height: screenHeight,
//                 width: screenWidth,
//                 color: Colors.grey.withOpacity(0.4),
//               ),
//
//               // Dog
//               Container(
//                 child: Image.asset(
//                   "assets/images/dog_wobg.png",
//                   scale: 1.2,
//                 ),
//                 padding: EdgeInsets.only(top: 100),
//                 alignment: Alignment.bottomRight,
//               ),
//
//               // Dialog Window
//               Padding(
//                 padding: EdgeInsets.only(top: screenHeight*0.07),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       width: screenWidth*0.9,
//                       height: screenHeight*0.45,
//                       // color: Colors.red,
//                           decoration: BoxDecoration(
//                               color: Colors.white,
//                               border: Border.all(
//                                   color: darkBlue
//                               ),
//                               borderRadius: BorderRadius.all(Radius.circular(20))
//                           ),
//                       child: whatToDisplay == 0 ?
//                           first() : second()
//
//
//                     ),
//                   ],
//                 ),
//               ),
//
//               // Big bubble
//               Padding(
//                 padding: EdgeInsets.only(
//                   top: screenHeight*0.525,
//                   left: screenWidth*0.45
//                 ),
//                 child: Container(
//                   width: screenWidth*0.14,
//                   height: screenHeight*0.07,
//                   decoration:  BoxDecoration(
//                       color: Colors.white,
//                       border: Border.all(
//                           color: darkBlue
//                       ),
//                       borderRadius: BorderRadius.all(Radius.circular(90))
//                   ),
//                 ),
//               ),
//
//               // Small bubble
//               Padding(
//                 padding: EdgeInsets.only(
//                     top: screenHeight*0.585,
//                     left: screenWidth*0.565
//                 ),
//                 child: Container(
//                   width: screenWidth*0.08,
//                   height: screenHeight*0.04,
//                   decoration:  BoxDecoration(
//                       color: Colors.white,
//                       border: Border.all(
//                           color: darkBlue
//                       ),
//                       borderRadius: BorderRadius.all(Radius.circular(90))
//                   ),
//                 ),
//               )
//             ]
//           ),
//     );
//   }
//
//   Widget buildOneMinuteWonder(double screenHeight, double screenWidth, Color lightBlue, Color darkBlue){
//
//     double totalWidth = 0.95 * screenWidth;
//     double totalHeight = 0.35 * screenWidth;
//
//     double imageHeight = screenHeight*0.1;
//     double imageWidth  = screenWidth*0.9;
//
//     double headDistance = screenHeight* 0.015;
//     double footDistance = screenHeight*0.044;
//
//     double leftDistance = screenWidth*0.02;
//     double rightDistance = screenWidth*0.02;
//
//     return Container(
//       // color: Colors.blue,
//       width: totalWidth,
//       height: totalHeight,
//       decoration: BoxDecoration(
//           color: lightBlue,
//           border: Border.all(
//               color: darkBlue
//           ),
//           borderRadius: BorderRadius.all(Radius.circular(10))
//       ),
//
//       child: Column(
//         children: [
//           SizedBox(height: headDistance),
//           Row(
//             children: [
//               SizedBox(width: leftDistance),
//               Container(
//                 height: imageHeight,
//                 width: imageWidth,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(
//                         color: darkBlue
//                     ),
//                     borderRadius: BorderRadius.all(Radius.circular(10))
//                 ),
//                 child: Image.asset("assets/images/gluehbirne.png"),
//               ),
//               SizedBox(width: rightDistance),
//             ],
//           ),
//           Container(
//             // color: Colors.red,
//               height: footDistance,
//               child: Center(
//                 child: Text(
//                   "1 Minute Wonder",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18
//                   ),
//                 ),
//               )
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget buildBasicTile(
//       double screenHeight, double screenWidth,
//       Color lightBlue, Color darkBlue,
//       String imagePath, String textToDisplay,
//       imageSizeFactor
//       ){
//
//     double totalHeight = screenHeight*0.2;
//     double totalWidth = screenWidth*0.4;
//
//     return Container(
//       // color: Colors.blue,
//       width: totalWidth,
//       height: totalHeight,
//       decoration: BoxDecoration(
//           color: lightBlue,
//           border: Border.all(
//               color: darkBlue
//           ),
//           borderRadius: BorderRadius.all(Radius.circular(10))
//       ),
//       child: Column(
//         children: [
//           Container(
//             height: totalHeight*0.1,
//             // color: Colors.red,
//           ),
//           Container(
//             height: totalHeight*0.7,
//             // color: Colors.yellow,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                     width: totalWidth*0.7,
//                     height: totalHeight*0.7,
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         border: Border.all(
//                             color: darkBlue
//                         ),
//                         borderRadius: BorderRadius.all(Radius.circular(10))
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           imagePath,
//                           width: totalWidth*imageSizeFactor,
//                         ),
//                       ],
//                     )
//                 ),
//               ],
//             ),
//           ),
//           Container(
//               height: totalHeight*0.18,
//               // color: Colors.white30,
//               child: Center(
//                 child: Text(
//                   textToDisplay,
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold
//                   ),
//                 ),
//               )
//           ),
//         ],
//       ),
//     );
//   }
//
//
// }
