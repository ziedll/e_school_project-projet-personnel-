import 'package:e_school_project/constants.dart';
import 'package:e_school_project/routes.dart';
import 'package:e_school_project/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E_school',
      //we will use dark theme for our app,
      theme: ThemeData.dark().copyWith(
        //scaffold default color
        scaffoldBackgroundColor: kPrimaryColor,
        primaryColor: kPrimaryColor,
        //Use google fonts for our app, we will use sourceSansPro
        textTheme:
            GoogleFonts.sourceSansProTextTheme(Theme.of(context).textTheme)
                .apply()
                .copyWith(
                    //custom text for bodyText1
                    bodyText1: TextStyle(
                        color: kTextWhiteColor,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold),
            subtitle2: TextStyle(color: kTextWhiteColor, fontSize: 18.0,
            fontWeight: FontWeight.w300)),
        //input decoration theme for all our app

        inputDecorationTheme: InputDecorationTheme(


          //label style for FormField
          labelStyle: TextStyle(
              fontSize: 18.0,
              color: kTextBlackColor,
              height: 1
          ),
          //hint style
          hintStyle: TextStyle(
              fontSize: 18.0,
              color: kTextWhiteColor,
              height: 1
          ),
          //we are using underline input border
          //not outline
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: kTextLightColor,
                width: 0.7
            ),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
                color:kTextLightColor
            ),
          ),
          disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color:kTextLightColor,
              )
          ),
          //on focus change color
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
            ),
          ),
          //color changed when the user enters wrong informations
          //we will use validators for this process
          errorBorder:UnderlineInputBorder(
            borderSide: BorderSide(
              color: kErrorBorderColor,
              width: 1.20,
            ),
          ),
          //same on focus error color
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: kErrorBorderColor,
                width: 1.20
            ),
          ),
        )
      ),
      //initial route is splash Screen
      // mean first screen
      initialRoute: SplashScreen.routename,
      //define the routes file here in order in order to access the routes any where all other the app
      routes: routes,
    );
  }
}
