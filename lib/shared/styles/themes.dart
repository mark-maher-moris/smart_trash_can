
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme = ThemeData(
  iconTheme: IconThemeData(
    color: Colors.black ,
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      fontSize: 18.0 ,
      fontWeight: FontWeight.w600 ,
      color: Colors.black ,
    ) ,
  ) ,
  appBarTheme: AppBarTheme(
    titleSpacing: 20.0,
    actionsIconTheme: IconThemeData(
      color: Colors.black ,
    ),
    backwardsCompatibility: false,
    color: Colors.white ,
    elevation: 5.0 ,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white ,
      statusBarIconBrightness: Brightness.dark ,
    ) ,
    titleTextStyle: TextStyle(
      color: Colors.black ,
      fontSize: 20.0 ,
      fontWeight: FontWeight.bold ,
    ),
  ) ,
  primarySwatch: Colors.green,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.blue ,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed ,
    selectedItemColor: Colors.blue ,
    elevation: 25.0 ,
  ),
  scaffoldBackgroundColor: Colors.white ,
);
