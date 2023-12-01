import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class VorsorgeCheckheftView extends StatefulWidget {
  VorsorgeCheckheftView({
    required this.screenHeight,
    required this.screenWidth,
    required this.lightBlue,
    required this.darkBlue
  });

  final double screenHeight, screenWidth;
  Color lightBlue, darkBlue;

  @override
  State<VorsorgeCheckheftView> createState() => _VorsorgeCheckheftViewState();
}

class _VorsorgeCheckheftViewState extends State<VorsorgeCheckheftView> {

  late double screenHeight;
  late double screenWidth;
  late Color lightBlue, darkBlue;

  int activeView = 0;

  Widget upperTile(
      String path,
      String textToDisplay,
      double scaleFactor,
      bool active
      ){
    return Container(
      width: screenWidth*0.35,
      height: screenHeight*0.15,
      decoration: BoxDecoration(
        color: active? lightBlue: Colors.grey[400],
        borderRadius: BorderRadius.all(
            Radius.circular(15)
        ),
        border: Border.all(
            color: darkBlue
        ),
      ),
      child: Column(
        children: [
          Container(
            height: screenHeight*0.02,
          ),
          Container(
            height: screenHeight*0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: screenWidth*0.25,
                    height: screenHeight*0.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                          Radius.circular(15)
                      ),
                      border: Border.all(
                          color: darkBlue
                      ),
                    ),
                    child:

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          path,
                          scale: scaleFactor,
                        ),
                      ],
                    )
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: screenHeight*0.002),
            child: Text(
              textToDisplay,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget examinationTile(
      String imagePath, String headLine,
      String date, String turn,
      bool dateIsFine,
      double scaleFactor
      ){
    return Container(
      child: Stack(
        children: [

          // White Container
          Container(
            width: screenWidth*0.95,
            height: screenHeight*0.14,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                  Radius.circular(20)
              ),
              border: Border.all(
                  color: darkBlue
              ),
            ),
            child: Column(
              children: [
                Container(
                  color: dateIsFine? Colors.greenAccent : Colors.redAccent,
                  height: screenHeight*0.10,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: screenWidth*0.472,
                        height: screenHeight*0.037,
                        child: Center(
                          child: Text(
                            "Mehr Informationen",
                            style: TextStyle(
                              color: lightBlue,
                              // fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                right: BorderSide(
                                    color: darkBlue,
                                    width: 1
                                )
                            )
                        ),
                      ),
                      Container(
                          width: screenWidth*0.472,
                          height: screenHeight*0.037,
                          child: Center(
                            child: Text(
                              "Einen Termin vereinbaren",
                              style: TextStyle(
                                color: lightBlue,
                                // fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          // Blue container
          Container(
            width: screenWidth*0.95,
            height: screenHeight*0.1,
            decoration: BoxDecoration(
              color: lightBlue,
              borderRadius: BorderRadius.all(
                  Radius.circular(7)
              ),
              border: Border.all(
                  color: darkBlue
              ),
            ),
            child: Row(
              children: [

                // Circle Avatar
                Container(
                  padding: EdgeInsets.only(
                      left: screenWidth*0.01,
                      top: screenHeight*0.01,
                      bottom: screenHeight*0.01
                  ),
                  child: CircleAvatar(

                    backgroundColor: darkBlue,
                    radius: 40,

                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 33,
                      child: Image.asset(
                        imagePath,
                        scale: scaleFactor,
                      ),
                    ),
                  ),
                ),

                // Icons
                Container(
                  width: screenWidth*0.05,
                  // color: Colors.red,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: screenHeight*0.005,
                      ),
                      Icon(
                        CupertinoIcons.pencil,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: screenHeight*0.005,
                      ),
                      Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: screenHeight*0.005,
                      ),
                      Icon(
                        Icons.av_timer_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),

                SizedBox(
                  width: screenWidth*0.05,
                ),

                // texts
                Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [


                      SizedBox(
                        height: headLine.length < 15 ? screenHeight*0.001: screenHeight*0.005,
                      ),


                      Container(
                        // color: Colors.yellow,
                        width: screenWidth*0.64,
                        child: Text(
                          headLine,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: headLine.length < 15 ? 26 : 18
                          ),
                        ),
                      ),

                      SizedBox(
                        height: headLine.length < 15 ? screenHeight*0.001: screenHeight*0.005,
                      ),

                      Container(
                        width: screenWidth*0.64,
                        child: Text(
                          date,
                          style: TextStyle(
                              color: dateIsFine? Colors.lightGreenAccent : Colors.redAccent
                          ),
                        ),
                      ),

                      SizedBox(
                        height: headLine.length < 15 ? screenHeight*0.005: screenHeight*0.008,
                      ),

                      Container(
                        width: screenWidth*0.64,
                        child: Text(
                          turn,
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      )

                    ],
                  ),
                )

              ],
            ),
          )
        ],
      ),
    );
  }

  Widget vaccinationTile(
      String headLine,
      String short,
      String date,
      String turn,
      bool dateIsFine,
      ){
    return Container(
      child: Stack(
        children: [

          // White Container
          Container(
            width: screenWidth*0.95,
            height: screenHeight*0.14,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                  Radius.circular(20)
              ),
              border: Border.all(
                  color: darkBlue
              ),
            ),
            child: Column(
              children: [
                Container(
                  color: dateIsFine? Colors.greenAccent : Colors.redAccent,
                  height: screenHeight*0.10,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: screenWidth*0.472,
                        height: screenHeight*0.037,
                        child: Center(
                          child: Text(
                            "Mehr Informationen",
                            style: TextStyle(
                              color: lightBlue,
                              // fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                right: BorderSide(
                                    color: darkBlue,
                                    width: 1
                                )
                            )
                        ),
                      ),
                      Container(
                          width: screenWidth*0.472,
                          height: screenHeight*0.037,
                          child: Center(
                            child: Text(
                              "Einen Termin vereinbaren",
                              style: TextStyle(
                                color: lightBlue,
                                // fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          // Blue container
          Container(
            width: screenWidth*0.95,
            height: screenHeight*0.1,
            decoration: BoxDecoration(
              color: lightBlue,
              borderRadius: BorderRadius.all(
                  Radius.circular(7)
              ),
              border: Border.all(
                  color: darkBlue
              ),
            ),
            child: Row(
              children: [

                // Circle Avatar
                Container(
                  padding: EdgeInsets.only(
                      left: screenWidth*0.01,
                      top: screenHeight*0.01,
                      bottom: screenHeight*0.01
                  ),
                  child: CircleAvatar(

                    backgroundColor: darkBlue,
                    radius: 40,

                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 33,
                        child: Text(
                          short,
                          style: TextStyle(
                              color: lightBlue
                          ),
                        )
                    ),
                  ),
                ),

                // Icons
                Container(
                  width: screenWidth*0.05,
                  // color: Colors.red,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: screenHeight*0.005,
                      ),
                      Icon(
                        CupertinoIcons.pencil,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: screenHeight*0.005,
                      ),
                      Icon(
                        Icons.question_mark_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: screenHeight*0.005,
                      ),
                      Icon(
                        Icons.calendar_month_rounded,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),

                SizedBox(
                  width: screenWidth*0.05,
                ),

                // texts
                Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [


                      SizedBox(
                        height: headLine.length < 15 ? screenHeight*0.001: screenHeight*0.005,
                      ),


                      Container(
                        // color: Colors.yellow,
                        width: screenWidth*0.64,
                        child: Text(
                          headLine,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: headLine.length < 15 ? 26 : 18
                          ),
                        ),
                      ),

                      SizedBox(
                        height: headLine.length < 15 ? screenHeight*0.001: screenHeight*0.005,
                      ),

                      Container(
                        width: screenWidth*0.64,
                        child: Text(
                          date.isNotEmpty ? dateIsFine ? "Bereits geimpft" : "Impfung nicht mehr aktuell" : "Noch nicht geimpft",
                          style: TextStyle(
                              color: dateIsFine? Colors.lightGreenAccent : Colors.redAccent
                          ),
                        ),
                      ),

                      SizedBox(
                        height: headLine.length < 15 ? screenHeight*0.005: screenHeight*0.008,
                      ),

                      Container(
                        width: screenWidth*0.64,
                        child: Text(
                          date.isNotEmpty ? date : "--.--.----",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      )

                    ],
                  ),
                )

              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildVaccination(){
    return Column(
      children: [

        // Sub-Header
        Container(
          height: screenHeight*0.04,
          decoration: BoxDecoration(
              color: lightBlue.withOpacity(0.4),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25)
              )
          ),
          child: Center(
            child: Text(
              "Vorsorge-Checkheft",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
              ),
            ),
          ),
        ),

        SizedBox(
          height: screenHeight*0.02,
        ),

        // Upper Tiles
        Row(
          children: [

            SizedBox(
              width: screenWidth*0.1,
            ),

            GestureDetector(
              child: upperTile(
                  "assets/images/shield.png",
                  "Vorsorge",
                  5,
                false
              ),
              onTap: () => toggleActiveView(0),
            ),

            SizedBox(
              width: screenWidth*0.1,
            ),


            GestureDetector(
              child: upperTile(
                  "assets/images/syringe.png",
                  "Impfungen",
                  3,
                true
              ),
              onTap: () => toggleActiveView(1),
            ),

          ],
        ),

        SizedBox(
          height: screenHeight*0.02,
        ),

        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(
              left: screenWidth*0.025
          ),
          child: Text(
            "Empfohlen für dich",
            style: TextStyle(
                color: lightBlue,
                fontSize: 28,
                fontWeight: FontWeight.bold
            ),
          ),
        ),

        SizedBox(
          height: screenHeight*0.02,
        ),

        // recommended tiles
        vaccinationTile(
            "Influenca",
            "Infl.",
            "",
            "6M",
            false
        ),

        SizedBox(
          height: screenHeight*0.02,
        ),

        vaccinationTile(
            "Hepatitis B",
            "Hep.B.",
            "05.01.2021",
            "12M",
            false
        ),


        SizedBox(
          height: screenHeight*0.02,
        ),

        vaccinationTile(
            "Human papilloma",
            "HPV",
            "21.06.2022",
            "10J",
            true
        )

      ],
    );
  }


  Widget buildVorsorge(){
    return Column(
      children: [

        // Sub-Header
          Container(
            height: screenHeight*0.04,
            decoration: BoxDecoration(
                color: lightBlue.withOpacity(0.4),
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25)
                )
            ),
            child: const Center(
              child: Text(
                "Vorsorge-Checkheft",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                ),
              ),
            ),
        ),

        SizedBox(
          height: screenHeight*0.02,
        ),

        // Upper Tiles
        Row(
          children: [

            SizedBox(
              width: screenWidth*0.1,
            ),
            GestureDetector(
              child: upperTile(
                  "assets/images/shield.png",
                  "Vorsorge",
                  5,
                true
              ),
              onTap: () => toggleActiveView(0),
            ),

            SizedBox(
              width: screenWidth*0.1,
            ),

            GestureDetector(
             child: upperTile(
                "assets/images/syringe.png",
                "Impfungen",
                3,
               false
            ),
              onTap: () => toggleActiveView(1),
            ),

          ],
        ),

        SizedBox(
          height: screenHeight*0.02,
        ),

        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(
              left: screenWidth*0.025
          ),
          child: Text(
            "Empfohlen für dich",
            style: TextStyle(
                color: lightBlue,
                fontSize: 28,
                fontWeight: FontWeight.bold
            ),
          ),
        ),

        SizedBox(
          height: screenHeight*0.02,
        ),

        // recommended tiles
        examinationTile(
            "assets/images/dent.png",
            "Zahnkontrolle",
            "16.10.2023",
            "6M",
            true,
            4.5
        ),

        SizedBox(
          height: screenHeight*0.02,
        ),

        examinationTile(
            "assets/images/gyn1.png",
            "Gynäkologische Untersuchung",
            "07.09.2022",
            "12M",
            false,
            8
        ),

        SizedBox(
          height: screenHeight*0.02,
        ),

        examinationTile(
            "assets/images/syringe.png",
            "Impfungen",
            "30.09.2013",
            "10J",
            false,
            5
        )

      ],
    );
  }

  void toggleActiveView(int index){
    setState(() {
      this.activeView = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    screenHeight = widget.screenHeight;
    screenWidth = widget.screenWidth;
    lightBlue = widget.lightBlue;
    darkBlue = widget.darkBlue;

    return Container(
        child: activeView == 0 ? buildVorsorge() : buildVaccination()
    );
  }
}

//
// class VorsorgeCheckheftView extends StatelessWidget {
//   VorsorgeCheckheftView({
//     required this.screenHeight,
//     required this.screenWidth,
//     required this.lightBlue,
//     required this.darkBlue
//   });
//
//   final double screenHeight, screenWidth;
//   Color lightBlue, darkBlue;
//
//
//   Widget upperTile(String path, String textToDisplay, double scaleFactor){
//     return Container(
//       width: screenWidth*0.35,
//       height: screenHeight*0.15,
//       decoration: BoxDecoration(
//         color: lightBlue,
//         borderRadius: BorderRadius.all(
//             Radius.circular(15)
//         ),
//         border: Border.all(
//             color: darkBlue
//         ),
//       ),
//       child: Column(
//         children: [
//           Container(
//             height: screenHeight*0.02,
//           ),
//           Container(
//             height: screenHeight*0.1,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Container(
//                     width: screenWidth*0.25,
//                     height: screenHeight*0.1,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.all(
//                           Radius.circular(15)
//                       ),
//                       border: Border.all(
//                           color: darkBlue
//                       ),
//                     ),
//                     child:
//
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           path,
//                           scale: scaleFactor,
//                         ),
//                       ],
//                     )
//                 ),
//               ],
//             ),
//           ),
//
//           Container(
//             padding: EdgeInsets.only(top: screenHeight*0.002),
//             child: Text(
//               textToDisplay,
//               style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget examinationTile(
//       String imagePath, String headLine,
//       String date, String turn,
//       bool dateIsFine,
//       double scaleFactor
//       ){
//     return Container(
//       child: Stack(
//         children: [
//
//           // White Container
//           Container(
//             width: screenWidth*0.95,
//             height: screenHeight*0.14,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.all(
//                   Radius.circular(20)
//               ),
//               border: Border.all(
//                   color: darkBlue
//               ),
//             ),
//             child: Column(
//               children: [
//                 Container(
//                   color: dateIsFine? Colors.greenAccent : Colors.redAccent,
//                   height: screenHeight*0.10,
//                 ),
//                 Container(
//                   child: Row(
//                     children: [
//                       Container(
//                         width: screenWidth*0.472,
//                         height: screenHeight*0.037,
//                         child: Center(
//                           child: Text(
//                             "Mehr Informationen",
//                             style: TextStyle(
//                               color: lightBlue,
//                               // fontWeight: FontWeight.bold
//                             ),
//                           ),
//                         ),
//                         decoration: BoxDecoration(
//                           border: Border(
//                             right: BorderSide(
//                               color: darkBlue,
//                               width: 1
//                             )
//                           )
//                         ),
//                       ),
//                       Container(
//                         width: screenWidth*0.472,
//                         height: screenHeight*0.037,
//                         child: Center(
//                           child: Text(
//                             "Einen Termin vereinbaren",
//                             style: TextStyle(
//                                 color: lightBlue,
//                                 // fontWeight: FontWeight.bold
//                             ),
//                           ),
//                         )
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//
//           // Blue container
//           Container(
//             width: screenWidth*0.95,
//             height: screenHeight*0.1,
//             decoration: BoxDecoration(
//               color: lightBlue,
//               borderRadius: BorderRadius.all(
//                   Radius.circular(7)
//               ),
//               border: Border.all(
//                   color: darkBlue
//               ),
//             ),
//             child: Row(
//               children: [
//
//                 // Circle Avatar
//                 Container(
//                   padding: EdgeInsets.only(
//                     left: screenWidth*0.01,
//                     top: screenHeight*0.01,
//                     bottom: screenHeight*0.01
//                   ),
//                   child: CircleAvatar(
//
//                     backgroundColor: darkBlue,
//                     radius: 40,
//
//                     child: CircleAvatar(
//                       backgroundColor: Colors.white,
//                       radius: 33,
//                       child: Image.asset(
//                         imagePath,
//                         scale: scaleFactor,
//                       ),
//                     ),
//                   ),
//                 ),
//
//                 // Icons
//                 Container(
//                   width: screenWidth*0.05,
//                   // color: Colors.red,
//                   child: Column(
//                     // mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       SizedBox(
//                         height: screenHeight*0.005,
//                       ),
//                       Icon(
//                         CupertinoIcons.pencil,
//                         color: Colors.white,
//                       ),
//                       SizedBox(
//                         height: screenHeight*0.005,
//                       ),
//                       Icon(
//                         Icons.calendar_month,
//                         color: Colors.white,
//                       ),
//                       SizedBox(
//                         height: screenHeight*0.005,
//                       ),
//                       Icon(
//                         Icons.av_timer_outlined,
//                         color: Colors.white,
//                       )
//                     ],
//                   ),
//                 ),
//
//                 SizedBox(
//                   width: screenWidth*0.05,
//                 ),
//
//                 // texts
//                 Container(
//                   child: Column(
//                     // mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//
//
//                       SizedBox(
//                         height: headLine.length < 15 ? screenHeight*0.001: screenHeight*0.005,
//                       ),
//
//
//                       Container(
//                         // color: Colors.yellow,
//                         width: screenWidth*0.64,
//                         child: Text(
//                           headLine,
//                           style: TextStyle(
//                               color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: headLine.length < 15 ? 26 : 18
//                           ),
//                         ),
//                       ),
//
//                       SizedBox(
//                         height: headLine.length < 15 ? screenHeight*0.001: screenHeight*0.005,
//                       ),
//
//                       Container(
//                         width: screenWidth*0.64,
//                         child: Text(
//                           date,
//                           style: TextStyle(
//                               color: dateIsFine? Colors.lightGreenAccent : Colors.redAccent
//                           ),
//                         ),
//                       ),
//
//                       SizedBox(
//                         height: headLine.length < 15 ? screenHeight*0.005: screenHeight*0.008,
//                       ),
//
//                       Container(
//                         width: screenWidth*0.64,
//                         child: Text(
//                           turn,
//                           style: TextStyle(
//                               color: Colors.white
//                           ),
//                         ),
//                       )
//
//                     ],
//                   ),
//                 )
//
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget vaccinationTile(
//       String headLine,
//       String short,
//       String date,
//       String turn,
//       bool dateIsFine,
//       ){
//     return Container(
//       child: Stack(
//         children: [
//
//           // White Container
//           Container(
//             width: screenWidth*0.95,
//             height: screenHeight*0.14,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.all(
//                   Radius.circular(20)
//               ),
//               border: Border.all(
//                   color: darkBlue
//               ),
//             ),
//             child: Column(
//               children: [
//                 Container(
//                   color: dateIsFine? Colors.greenAccent : Colors.redAccent,
//                   height: screenHeight*0.10,
//                 ),
//                 Container(
//                   child: Row(
//                     children: [
//                       Container(
//                         width: screenWidth*0.472,
//                         height: screenHeight*0.037,
//                         child: Center(
//                           child: Text(
//                             "Mehr Informationen",
//                             style: TextStyle(
//                               color: lightBlue,
//                               // fontWeight: FontWeight.bold
//                             ),
//                           ),
//                         ),
//                         decoration: BoxDecoration(
//                             border: Border(
//                                 right: BorderSide(
//                                     color: darkBlue,
//                                     width: 1
//                                 )
//                             )
//                         ),
//                       ),
//                       Container(
//                           width: screenWidth*0.472,
//                           height: screenHeight*0.037,
//                           child: Center(
//                             child: Text(
//                               "Einen Termin vereinbaren",
//                               style: TextStyle(
//                                 color: lightBlue,
//                                 // fontWeight: FontWeight.bold
//                               ),
//                             ),
//                           )
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//
//           // Blue container
//           Container(
//             width: screenWidth*0.95,
//             height: screenHeight*0.1,
//             decoration: BoxDecoration(
//               color: lightBlue,
//               borderRadius: BorderRadius.all(
//                   Radius.circular(7)
//               ),
//               border: Border.all(
//                   color: darkBlue
//               ),
//             ),
//             child: Row(
//               children: [
//
//                 // Circle Avatar
//                 Container(
//                   padding: EdgeInsets.only(
//                       left: screenWidth*0.01,
//                       top: screenHeight*0.01,
//                       bottom: screenHeight*0.01
//                   ),
//                   child: CircleAvatar(
//
//                     backgroundColor: darkBlue,
//                     radius: 40,
//
//                     child: CircleAvatar(
//                       backgroundColor: Colors.white,
//                       radius: 33,
//                       child: Text(
//                         short,
//                         style: TextStyle(
//                           color: lightBlue
//                         ),
//                       )
//                     ),
//                   ),
//                 ),
//
//                 // Icons
//                 Container(
//                   width: screenWidth*0.05,
//                   // color: Colors.red,
//                   child: Column(
//                     // mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       SizedBox(
//                         height: screenHeight*0.005,
//                       ),
//                       Icon(
//                         CupertinoIcons.pencil,
//                         color: Colors.white,
//                       ),
//                       SizedBox(
//                         height: screenHeight*0.005,
//                       ),
//                       Icon(
//                         Icons.question_mark_rounded,
//                         color: Colors.white,
//                       ),
//                       SizedBox(
//                         height: screenHeight*0.005,
//                       ),
//                       Icon(
//                         Icons.calendar_month_rounded,
//                         color: Colors.white,
//                       )
//                     ],
//                   ),
//                 ),
//
//                 SizedBox(
//                   width: screenWidth*0.05,
//                 ),
//
//                 // texts
//                 Container(
//                   child: Column(
//                     // mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//
//
//                       SizedBox(
//                         height: headLine.length < 15 ? screenHeight*0.001: screenHeight*0.005,
//                       ),
//
//
//                       Container(
//                         // color: Colors.yellow,
//                         width: screenWidth*0.64,
//                         child: Text(
//                           headLine,
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: headLine.length < 15 ? 26 : 18
//                           ),
//                         ),
//                       ),
//
//                       SizedBox(
//                         height: headLine.length < 15 ? screenHeight*0.001: screenHeight*0.005,
//                       ),
//
//                       Container(
//                         width: screenWidth*0.64,
//                         child: Text(
//                           date.isNotEmpty ? dateIsFine ? "Bereits geimpft" : "Impfung nicht mehr aktuell" : "Noch nicht geimpft",
//                           style: TextStyle(
//                               color: dateIsFine? Colors.lightGreenAccent : Colors.redAccent
//                           ),
//                         ),
//                       ),
//
//                       SizedBox(
//                         height: headLine.length < 15 ? screenHeight*0.005: screenHeight*0.008,
//                       ),
//
//                       Container(
//                         width: screenWidth*0.64,
//                         child: Text(
//                           date.isNotEmpty ? date : "--.--.----",
//                           style: TextStyle(
//                               color: Colors.white
//                           ),
//                         ),
//                       )
//
//                     ],
//                   ),
//                 )
//
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget buildVaccination(){
//     return Column(
//       children: [
//
//         // Sub-Header
//         Container(
//           height: screenHeight*0.04,
//           decoration: BoxDecoration(
//               color: lightBlue.withOpacity(0.4),
//               borderRadius: BorderRadius.only(
//                   bottomRight: Radius.circular(25),
//                   bottomLeft: Radius.circular(25)
//               )
//           ),
//           child: Center(
//             child: Text(
//               "Vorsorge-Checkheft",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16
//               ),
//             ),
//           ),
//         ),
//
//         SizedBox(
//           height: screenHeight*0.02,
//         ),
//
//         // Upper Tiles
//         Row(
//           children: [
//
//             SizedBox(
//               width: screenWidth*0.1,
//             ),
//
//             upperTile(
//                 "assets/images/shield.png",
//                 "Vorsorge",
//                 5
//             ),
//
//             SizedBox(
//               width: screenWidth*0.1,
//             ),
//
//             upperTile(
//                 "assets/images/syringe.png",
//                 "Impfungen",
//                 3
//             ),
//
//           ],
//         ),
//
//         SizedBox(
//           height: screenHeight*0.02,
//         ),
//
//         Container(
//           alignment: Alignment.centerLeft,
//           padding: EdgeInsets.only(
//               left: screenWidth*0.025
//           ),
//           child: Text(
//             "Empfohlen für dich",
//             style: TextStyle(
//                 color: lightBlue,
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold
//             ),
//           ),
//         ),
//
//         SizedBox(
//           height: screenHeight*0.02,
//         ),
//
//         // recommended tiles
//         vaccinationTile(
//             "Influenca",
//             "Infl.",
//             "",
//             "6M",
//             false
//         ),
//
//         SizedBox(
//           height: screenHeight*0.02,
//         ),
//
//         vaccinationTile(
//             "Hepatitis B",
//             "Hep.B.",
//             "05.01.2021",
//             "12M",
//             false
//         ),
//
//
//         SizedBox(
//           height: screenHeight*0.02,
//         ),
//
//         vaccinationTile(
//             "Human papilloma",
//             "HPV",
//             "21.06.2022",
//             "10J",
//             true
//         )
//
//       ],
//     );
//   }
//
//
//   Widget buildVorsorge(){
//     return Column(
//       children: [
//
//         // Sub-Header
//         Container(
//           height: screenHeight*0.04,
//           decoration: BoxDecoration(
//               color: lightBlue.withOpacity(0.4),
//               borderRadius: BorderRadius.only(
//                   bottomRight: Radius.circular(25),
//                   bottomLeft: Radius.circular(25)
//               )
//           ),
//           child: Center(
//             child: Text(
//               "Vorsorge-Checkheft",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16
//               ),
//             ),
//           ),
//         ),
//
//         SizedBox(
//           height: screenHeight*0.02,
//         ),
//
//         // Upper Tiles
//         Row(
//           children: [
//
//             SizedBox(
//               width: screenWidth*0.1,
//             ),
//
//             upperTile(
//                 "assets/images/shield.png",
//                 "Vorsorge",
//                 5
//             ),
//
//             SizedBox(
//               width: screenWidth*0.1,
//             ),
//
//             upperTile(
//                 "assets/images/syringe.png",
//                 "Impfungen",
//                 3
//             ),
//
//           ],
//         ),
//
//         SizedBox(
//           height: screenHeight*0.02,
//         ),
//
//         Container(
//           alignment: Alignment.centerLeft,
//           padding: EdgeInsets.only(
//               left: screenWidth*0.025
//           ),
//           child: Text(
//             "Empfohlen für dich",
//             style: TextStyle(
//                 color: lightBlue,
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold
//             ),
//           ),
//         ),
//
//         SizedBox(
//           height: screenHeight*0.02,
//         ),
//
//         // recommended tiles
//         examinationTile(
//             "assets/images/dent.png",
//             "Zahnkontrolle",
//             "16.10.2023",
//             "6M",
//             true,
//             4.5
//         ),
//
//         SizedBox(
//           height: screenHeight*0.02,
//         ),
//
//         examinationTile(
//             "assets/images/gyn1.png",
//             "Gynäkologische Untersuchung",
//             "07.09.2022",
//             "12M",
//             false,
//             8
//         ),
//
//         SizedBox(
//           height: screenHeight*0.02,
//         ),
//
//         examinationTile(
//             "assets/images/syringe.png",
//             "Impfungen",
//             "30.09.2013",
//             "10J",
//             false,
//             5
//         )
//
//       ],
//     );
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: buildVaccination() //buildVorsorge()
//     );
//   }
// }
