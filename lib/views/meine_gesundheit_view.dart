import 'package:flutter/material.dart';

import '../widgets/basic_tile.dart';

class MeineGesundheitView extends StatefulWidget {
   MeineGesundheitView({
    required this.screenHeight,
    required this.screenWidth,
    required this.lightBlue,
    required this.darkBlue,
  });

  double screenHeight, screenWidth;
  Color lightBlue, darkBlue;

  @override
  State<MeineGesundheitView> createState() => _MeineGesundheitViewState();
}

class _MeineGesundheitViewState extends State<MeineGesundheitView> {

  late double screenHeight;
  late double screenWidth;
  late Color lightBlue, darkBlue;

  bool physicistSelection = false;
  bool physicistActive = false;

  void togglePhysicistSelection(){
    setState(() {
      physicistSelection = !physicistSelection;
    });
  }

  void togglePhysicistActive(){
    setState(() {
      physicistActive = !physicistActive;
    });
  }

  Widget physicistSelectionTile(String path, double scaleFactor){
    return GestureDetector(
      child: Container(
        width: screenWidth*0.13,
        height: screenHeight*0.06,
        decoration: BoxDecoration(
          color: lightBlue,
          borderRadius: BorderRadius.all(
              Radius.circular(90)
          ),
        ),
        child: CircleAvatar(
          backgroundColor: lightBlue,
          child: Image.asset(
            path,
            scale: scaleFactor,
          ),
        ),
      ),
      onTap: () => togglePhysicistActive(),
    );
  }

  Widget buildPhysicistSelection(){
    return Container(
      width: screenWidth*0.88,
      height: screenHeight*0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(15)
        ),
        border: Border.all(
            color: darkBlue
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          physicistSelectionTile("assets/images/stetho.png", 7),

          physicistSelectionTile("assets/images/darm.png", 5),

          physicistSelectionTile("assets/images/lung.png", 5),

          physicistSelectionTile("assets/images/diabetis.png", 5),

          physicistSelectionTile("assets/images/gyn2.png", 6.5),

        ],
      ),
    );
  }


  buildPhysicistDetail(){
    return Padding(
        padding: EdgeInsets.only(
          top: screenHeight*0.37,
          left: screenWidth*0.05
        ),
      child: Container(
        width: screenWidth*0.9,
        height: screenHeight*0.32,
        // color: Colors.red,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(15)
          ),
          border: Border.all(
            color: lightBlue
          ),
        ),
        child: Column(
          children: [
            Container(
              width: screenWidth*0.9,
              height: screenHeight*0.02,
              // color: Colors.yellow,
            ),
            Container(
              width: screenWidth*0.9,
              height: screenHeight*0.11,
              // color: Colors.red,
              child: Row(
                children: [

                  SizedBox(
                    width: screenWidth*0.02,
                  ),

                  Container(
                    width: screenWidth*0.6,
                    alignment: Alignment.topLeft,
                    // color: Colors.grey,
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            "Praxis Dr. Lenk",
                            style: TextStyle(
                                fontSize: 22
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          child: Text(
                            "Herner Straße 227",
                            style: TextStyle(
                                fontSize: 22
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          child: Text("44809 Bochum",
                            style: TextStyle(
                                fontSize: 22
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidth*0.27,
                    // color: Colors.greenAccent,
                    child: Image.asset("assets/images/google_maps.png"),
                  )
                ],
              ),
            ),
            Container(
              width: screenWidth*0.9,
              height: screenHeight*0.005,
              // color: Colors.yellow,
            ),
            Container(
              width: screenWidth*0.9,
              height: screenHeight*0.1,
              child: Column(
                children: [
                  Row(
                    children: [

                      SizedBox(
                        width: screenWidth*0.02,
                      ),

                      Image.asset(
                          "assets/images/mo_do.png",
                        scale: 5,
                      ),

                      SizedBox(
                        width: screenWidth*0.02,
                      ),

                      Text(
                        "8 - 12",
                        style: TextStyle(
                          color: lightBlue,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      SizedBox(
                        width: screenWidth*0.02,
                      ),

                      Text(
                          "&"
                      ),

                      SizedBox(
                        width: screenWidth*0.02,
                      ),

                      Text(
                          "15 - 18",
                        style: TextStyle(
                            color: lightBlue,
                            fontWeight: FontWeight.bold
                        ),
                      )

                    ],
                  ),

                  SizedBox(
                    height: screenHeight*0.005,
                  ),

                  Row(
                    children: [

                      SizedBox(
                        width: screenWidth*0.02,
                      ),

                      Image.asset(
                        "assets/images/fr.png",
                        scale: 5,
                      ),

                      SizedBox(
                        width: screenWidth*0.02,
                      ),

                      Text(
                          "8 - 12",
                        style: TextStyle(
                            color: lightBlue,
                            fontWeight: FontWeight.bold
                        ),
                      )


                    ],
                  )
                ],
              ),
            ),
            Container(
              width: screenWidth*0.9,
              height: screenHeight*0.065,
              // color: Colors.yellowAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: screenWidth*0.4,
                    height: screenHeight*0.05,
                    color: lightBlue,
                    child: Center(
                      child: Text(
                        "Anrufen",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ),
                  Container(
                    width: screenWidth*0.4,
                    height: screenHeight*0.05,
                    color: lightBlue,
                    child: Center(
                      child: Text(
                        "KI-Assistenten Termin vereinbaren lassen",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          fontSize: 12
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    screenHeight = widget.screenHeight;
    screenWidth = widget.screenWidth;
    lightBlue = widget.lightBlue;
    darkBlue = widget.darkBlue;

    return Container(
      child: Stack(
        children: [
          Column(
            children: [

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
                    "Meine Gesundheit",
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
                            darkBlue, "assets/images/physicist.png", "Ärzte/Ärztinnen",
                            0.55
                        ),
                        onTap: () => togglePhysicistSelection()
                    ),
                    GestureDetector(
                      child: buildBasicTile(
                          screenHeight, screenWidth, lightBlue,
                          darkBlue, "assets/images/dent.png", "Zahnarzt/-ärztin",
                          0.5
                      ),
                      onTap: () => {
                        // toggleEmergencyActive()
                      },
                    )
                  ],
                ),
              ),

              physicistSelection ? SizedBox(
                height: screenHeight*0.02,
              ) : Container(),

              physicistSelection ? buildPhysicistSelection() : Container(),

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
                        darkBlue, "assets/images/pharmacy.png", "Apotheke",
                        0.55
                    ),
                    GestureDetector(
                      child: buildBasicTile(
                          screenHeight, screenWidth, lightBlue,
                          darkBlue, "assets/images/ikk.png", "Krankenkasse",
                          0.5
                      ),
                      onTap: () => {
                        // toggleEmergencyActive()
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
                    buildBasicTile(
                        screenHeight, screenWidth, lightBlue,
                        darkBlue, "assets/images/pflege.png", "Pflegedienst",
                        0.55
                    ),
                    Container(
                      height: screenHeight*0.2,
                      width: screenWidth*0.4,
                    )
                  ],
                ),
              ),

            ],
          ),
          physicistSelection ? physicistActive ? buildPhysicistDetail() : Container()
          : Container(),
        ],
      )
    );
  }
}
