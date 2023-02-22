import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const String rubbish = 'lib/assets/rubbish.png';
const Color mainColor = Color.fromRGBO(54, 255, 4, 100);
const Color glowColor = Color.fromRGBO(18, 145, 6, 1);
const TextStyle ourStyle = TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontFamily: 'Anaqa');

Widget myBox({
  required int h,
  required int w,
  required Color c1,
  bool isCircle = false,
  required Widget child,
  final onClick,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: onClick == null ? () {} : onClick,
      child: Container(
        child: Center(
          child: child,
        ),
        width: w.toDouble(),
        height: h.toDouble(),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: glowColor,
                  spreadRadius: 5,
                  blurRadius: 12,
                  offset: Offset(0, 8))
            ],
            shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
            color: c1,
            borderRadius:
                isCircle ? null : BorderRadius.all(Radius.circular(20))),
      ),
    ),
  );
}

Widget custemTF({required IconData icn, final saved, required String hintTxt}) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'ادخل المطلوب هنا';
        }
      },
      onSaved: saved,
      decoration: InputDecoration(
          hintText: hintTxt,
          hintStyle: TextStyle(fontFamily: 'Anaqa'),
          icon: Icon(
            icn,
            color: Colors.black,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(color: mainColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(color: mainColor)),
          fillColor: mainColor,
          filled: true,
          focusColor: mainColor),
    ),
  );
}

/////////////////////////////////////////////////////////////////

ThemeData lightTheme = ThemeData(
  iconTheme: IconThemeData(
    color: Colors.black,
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  ),
  appBarTheme: AppBarTheme(
    titleSpacing: 20.0,
    actionsIconTheme: IconThemeData(
      color: Colors.black,
    ),
    backwardsCompatibility: false,
    color: Colors.white,
    elevation: 5.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
  ),
  primarySwatch: Colors.green,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.blue,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.blue,
    elevation: 25.0,
  ),
  scaffoldBackgroundColor: Colors.white,
);
