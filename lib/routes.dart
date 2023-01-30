
import 'package:e_school_project/screens/Menu_du_jour_screen/Daily_Menu.dart';
import 'package:e_school_project/screens/chat_screen/chat_screen.dart';
import 'package:e_school_project/screens/datesheet_screen/datesheet_screen.dart';
import 'package:e_school_project/screens/home_screen/home_screen.dart';
import 'package:e_school_project/screens/login_screen/login_screen.dart';
import 'package:e_school_project/screens/splash_screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';

import 'screens/assignment_screen/assignment_screen.dart';

Map<String, WidgetBuilder> routes = {
  //all screens will be registered here like manifest in android
  SplashScreen.routename: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  AssignmentScreen.routeName: (context) => AssignmentScreen(),
  DateSheetScreen.routeName: (context) => DateSheetScreen(),
  ChatScreen.routeName: (context) => ChatScreen(),
  LoginScreen.routeName1: (context) => LoginScreen(),
  DailyMenuScreen.routeName: (context) =>  DailyMenuScreen(),
};
