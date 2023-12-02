import 'package:flutter/material.dart';
import 'package:gesundheitsamt_test_1/views/dog_clicked_view.dart';
import 'package:gesundheitsamt_test_1/views/main_menu_view.dart';
import 'package:gesundheitsamt_test_1/views/meine_gesundheit_view.dart';
import 'package:gesundheitsamt_test_1/views/one_minute_wonder_view.dart';
import 'package:gesundheitsamt_test_1/views/vorsorge_checkheft_view.dart';
import 'package:gesundheitsamt_test_1/widgets/app_bar.dart';
import 'package:gesundheitsamt_test_1/widgets/bottom_sheet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  int activeView = 0;
  bool backButtonActive = false;
  bool emergencyPhoneNumbersActive = false;

  void toggleActiveView(int index){
    setState(() {
      activeView = index;
      if(activeView != 0){
        backButtonActive = true;
      }else{
        backButtonActive = false;
      }
    });
  }

  void toggleEmergencyActive(){
    setState(() {
      emergencyPhoneNumbersActive = !emergencyPhoneNumbersActive;
      print(emergencyPhoneNumbersActive);
    });
  }

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    Color lightBlue = Color(0xff38B6FF);
    Color darkBlue = Color(0xff004AAD);

    return Scaffold(
      appBar: buildAppBar(
          lightBlue,
          backButtonActive,
          toggleActiveView,
          activeView
      ),
      bottomSheet: buildBottomSheet(
          screenHeight, screenWidth,
          lightBlue, darkBlue, activeView
      ),

      body: activeView == 0 ?
        MainMenuView(
          screenWidth: screenWidth,screenHeight: screenHeight,
          lightBlue: lightBlue, darkBlue: darkBlue,
          toggleActiveView: toggleActiveView,
          toggleEmergencyActive:toggleEmergencyActive,
          emergencyPhoneNumbersActive: emergencyPhoneNumbersActive,
        ) : activeView == 1 ?
        DogClickedView(
          screenHeight: screenHeight, screenWidth: screenWidth,
          lightBlue: lightBlue, darkBlue: darkBlue,
          toggleActiveView: toggleActiveView,
        ) : activeView == 2 ?
        VorsorgeCheckheftView(
            screenHeight: screenHeight, screenWidth: screenWidth,
            lightBlue: lightBlue, darkBlue: darkBlue,
        ) : activeView == 3 ?
          MeineGesundheitView(
              screenHeight: screenHeight, screenWidth: screenWidth,
              lightBlue: lightBlue, darkBlue: darkBlue)
          : activeView == 4 ?
          OneMinuteWonderView(screenHeight: screenHeight, screenWidth: screenWidth,
              lightBlue: lightBlue, darkBlue: darkBlue) : Container()
    );
  }
}
