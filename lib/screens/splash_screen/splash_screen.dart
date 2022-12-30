import 'package:e_school_project/constants.dart';
import 'package:e_school_project/screens/login_screen/login_screen.dart';
import "package:flutter/material.dart";


class SplashScreen extends StatelessWidget {
  //route name for our screen
  static String routename = 'SplashScreen';
  @override
  Widget build(BuildContext context) {

    //we use future to go from one screen to other via duration time
    Future.delayed(Duration(seconds: 5),  (){
      //no return when user is on login screen and press back, it will not return the
      //user to the splash screen
      Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName, (route) => false);
    });
    //scaffold color set to primary color in main in our text theme
    return Scaffold(
      //its a row with a column
      body: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: 698,
              width: 400,

              child: Text("E-school", style: TextStyle(
                  color:kTextWhiteColor,
                  fontSize: 55.0,
                  letterSpacing: 2.0,
                ),),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset('assets/images/college-student-walking-flat-design-concept-vector-illustration-206013041-removebg-preview.png', height: 500, width: 400,
              ),
            ),
              Row(
              children: [
                Expanded(
                  child:Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed"
                          " do eiusmod tempor incididunt ut labore et dolore magna "
                          "aliqua. Ut enim ad minim veniam, quis nostrud "
                          "exercitation ullamco laboris nisi ut aliquip ex ea "
                          "commodo consequat."),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


