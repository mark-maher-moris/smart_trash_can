import 'package:flutter/material.dart';
import 'package:smart_trash_can/shared/styles/themes.dart';

import 'code_screen.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'تسجيل الدخول',
                style: ourStyle.copyWith(fontSize: 35),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                "ملحوظة رقم التليفون سيكون هو رقم الحساب \nالذي ستضعه في سلة القمامة",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red),
              ),
              SizedBox(
                height: 60,
              ),
              custemTF(icn: Icons.phone, hintTxt: 'رقم التليفون'),
              myBox(
                  h: 50,
                  w: 150,
                  c1: mainColor,
                  child: Text(
                    "ارسل كود التفعيل ",
                    style: TextStyle(fontFamily: 'Anaqa'),
                  ),
                  onClick: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CodeScreen()));
                  })
            ],
          ),
        ),
      ),
    ));
  }
}
