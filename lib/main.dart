import 'package:flutter/material.dart';
import 'package:smart_trash_can/layout/home_screen.dart';
import 'package:smart_trash_can/modules/order_details/oreder_details_screen.dart';
import 'layout/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Smart Trash can ",
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
