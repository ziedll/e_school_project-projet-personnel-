
import 'package:e_school_project/screens/login_screen/login_screen.dart';
import 'package:e_school_project/screens/splash_screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> routes = {
  //all screens will be registered here like manifest in android
  SplashScreen.routename : (context) => SplashScreen(),
  LoginScreen.routeName : (context) => LoginScreen(),
};