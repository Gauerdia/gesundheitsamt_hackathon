import 'package:flutter/material.dart';

class OneMinuteWonderView extends StatefulWidget {

  OneMinuteWonderView({
    required this.screenHeight,
    required this.screenWidth,
    required this.lightBlue,
    required this.darkBlue,
  });

  double screenHeight, screenWidth;
  Color lightBlue, darkBlue;

  @override
  State<OneMinuteWonderView> createState() => _OneMinuteWonderViewState();
}

class _OneMinuteWonderViewState extends State<OneMinuteWonderView> {

  late double screenHeight, screenWidth;
  late Color lightBlue, darkBlue;

  int viewChoice = 0;

  void toggleViewChoice(int index){
    setState(() {
      viewChoice = index;
    });
  }


  Widget firstExampleScreen(){
    return Column(
      children: [

        Container(
          width: screenWidth,
          height: screenHeight*0.08,
          // color: Colors.grey,
        ),

        Container(
          width: screenWidth,
          height: screenHeight*0.5,
          // color: Colors.greenAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: screenWidth*0.95,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: darkBlue
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Column(
                  children: [
                    Container(
                      height: screenHeight*0.25,
                      // color: Colors.red,
                      padding: EdgeInsets.only(
                        left: screenWidth*0.05,
                        right: screenWidth*0.05,
                        top: screenHeight*0.05
                      ),
                      child: Center(
                        child: Text(
                            "Lass uns gemeeinsam Zähneputzen! Putze die Fronseite,"
                                "bis ich dir das Signal gebe, dass die empfohlene"
                                " Zeit abgelaufen ist!",
                        style: TextStyle(
                          fontSize: 22
                        ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: screenHeight*0.05
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.watch_later_outlined,
                          color: lightBlue,
                          size: 120,
                          ),
                          Text(
                            "00:23",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                              color: lightBlue
                            ),
                          )
                        ],
                      )
                    )
                  ],
                ),
              )
            ],
          ),
        ),

        Container(
          width: screenWidth,
          height: screenHeight*0.23,
          // color: Colors.redAccent,
          child: Stack(
            children: [
              Container(
                child: Image.asset(
                  "assets/images/dog3_wobg.png",
                  scale: 2,
                ),
                padding: EdgeInsets.only(bottom: 0),
                alignment: Alignment.bottomRight,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget secondExampleScreen(){
    return Column(
      children: [

        Padding(
          padding: EdgeInsets.only(
            top: screenHeight*0.05,
          ),
          child: Container(
            width: screenWidth*0.95,
            height: screenHeight*0.3,
            padding: EdgeInsets.only(
                left: screenWidth*0.1,
                right: screenWidth*0.1
            ),
            decoration: BoxDecoration(
              color: Color(0xff99D9FF),
              border: Border.all(
                color: darkBlue
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20)
              )
            ),
            child: Center(
              child: Text(
                "Wie viel Prozent der jungen Frauen in Deutschland haben Chlamydien?",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ),

        Padding(
            padding: EdgeInsets.only(
                top: screenHeight*0.1
            ),
            child: Container(
              width: screenWidth*0.95,
              height: screenHeight*0.09,

              decoration: BoxDecoration(
                  color: Color(0xff99D9FF),
                  border: Border.all(
                      color: darkBlue
                  ),
                  borderRadius: BorderRadius.all(
                      Radius.circular(20)
                  )
              ),
              child: Center(
                child: Text(
                  "Unter 1 %",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                  ),
                ),
              )
            )
        ),
        Padding(
            padding: EdgeInsets.only(
                top: screenHeight*0.01
            ),
            child: Container(
              width: screenWidth*0.95,
              height: screenHeight*0.09,

              decoration: BoxDecoration(
                  color: Color(0xff99D9FF),
                  border: Border.all(
                      color: darkBlue
                  ),
                  borderRadius: BorderRadius.all(
                      Radius.circular(20)
                  )
              ),
              child: Center(
                child: Text(
                  "Ca 5 %",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                  ),
                ),
              )
            )
        ),
        Padding(
            padding: EdgeInsets.only(
                top: screenHeight*0.01
            ),
            child: Container(
              width: screenWidth*0.95,
              height: screenHeight*0.09,

              decoration: BoxDecoration(
                  color: Color(0xff99D9FF),
                  border: Border.all(
                      color: darkBlue
                  ),
                  borderRadius: BorderRadius.all(
                      Radius.circular(20)
                  )
              ),
              child: Center(
                child: Text(
                    "Über 20 %",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                  ),
                ),
              )
            )
        ),
        
        Padding(
            padding: EdgeInsets.only(
              top: screenHeight*0.015,
              right: screenWidth*0.01
            ),
          child: Container(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              "assets/images/web_search.png",
              scale: 6,
            ),
          ),
        )



      ],
    );
  }

  Widget thirdExampleScreen(){
    return Column(
      children: [

        Padding(
            padding: EdgeInsets.only(
              top: screenHeight*0.05,
            ),
            child: Container(
              width: screenWidth*0.95,
              height: screenHeight*0.3,
              padding: EdgeInsets.only(
                  left: screenWidth*0.1,
                  right: screenWidth*0.1
              ),
              decoration: BoxDecoration(
                  color: Color(0xff99D9FF),
                  border: Border.all(
                      color: darkBlue
                  ),
                  borderRadius: BorderRadius.all(
                      Radius.circular(20)
                  )
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight*0.02,
                  ),
                  Image.asset("assets/images/nutri_score.png"),
                  SizedBox(
                    height: screenHeight*0.01,
                  ),
                  Text(
                    "Weißt du eigentlich, was der Nutri-Score aussagt?",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            )
        ),

        Padding(
            padding: EdgeInsets.only(
                top: screenHeight*0.1
            ),
            child: Container(
                width: screenWidth*0.95,
                height: screenHeight*0.09,

                decoration: BoxDecoration(
                    color: Color(0xff99D9FF),
                    border: Border.all(
                        color: darkBlue
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(20)
                    )
                ),
                child: Center(
                  child: Text(
                    "Er beschreibt, wie viel Zucker ein Produkt enthält. A bedeutet '0 Gramm Zucker'"
                        " und E 'mindestens 100 Gamm Zucker'.",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
            )
        ),
        Padding(
            padding: EdgeInsets.only(
                top: screenHeight*0.01
            ),
            child: Container(
                width: screenWidth*0.95,
                height: screenHeight*0.09,

                decoration: BoxDecoration(
                    color: Color(0xff99D9FF),
                    border: Border.all(
                        color: darkBlue
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(20)
                    )
                ),
                child: Center(
                  child: Text(
                    "Er vergleicht Nährwerte derselben Produktkategorien. Zum Beispiel TIefkühlpizzen mit anderen Tiefkühlpizzen.",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
            )
        ),
        Padding(
            padding: EdgeInsets.only(
                top: screenHeight*0.01
            ),
            child: Container(
                width: screenWidth*0.95,
                height: screenHeight*0.09,

                decoration: BoxDecoration(
                    color: Color(0xff99D9FF),
                    border: Border.all(
                        color: darkBlue
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(20)
                    )
                ),
                child: Center(
                  child: Text(
                    "Er zeigt, welche Lebensmittel allgemein gesund und ungesund sind."
                    "Grün ist immer bedenkenlos, rot immer zu vermeiden.",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
            )
        ),

        Padding(
          padding: EdgeInsets.only(
              top: screenHeight*0.015,
              right: screenWidth*0.01
          ),
          child: Container(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              "assets/images/web_search.png",
              scale: 6,
            ),
          ),
        )



      ],
    );
  }


  @override
  Widget build(BuildContext context) {

    screenWidth = widget.screenWidth;
    screenHeight = widget.screenHeight;

    lightBlue = widget.lightBlue;
    darkBlue = widget.darkBlue;

    return Container(
      color: widget.lightBlue,
      width: screenWidth,
      child: viewChoice == 0 ?
      GestureDetector(
        child: firstExampleScreen(),
        onTap: () => toggleViewChoice(1),
      )
      : viewChoice == 1 ?
      GestureDetector(
        child: secondExampleScreen(),
        onTap: () => toggleViewChoice(2),
      ) :
      viewChoice == 2 ?
      GestureDetector(
        child: thirdExampleScreen(),
        onTap: () => toggleViewChoice(3),
      )
      : Container(),
    );
  }
}
