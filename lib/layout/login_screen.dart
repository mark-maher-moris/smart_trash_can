import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_trash_can/layout/home_screen.dart';
import 'package:smart_trash_can/shared/styles/themes.dart';
import 'package:icon_broken/icon_broken.dart';
import '../serveses/auth.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  bool isLoading = false;
  AuthClass authObj = AuthClass();
  dynamic inputNumber = '';
  @override
  Widget build(BuildContext context) {
    print(inputNumber);
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _globalKey,
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
                CustemTF(
                    icn: IconBroken.Call,
                    hintTxt: 'رقم التليفون',
                    saved: (val) {
                      inputNumber = val;
                    }),
                CustemTF(
                  icn: IconBroken.User,
                  hintTxt: 'الاسم',
                ),
                myBox(
                    h: 50,
                    w: 150,
                    c1: mainColor,
                    child: Text(
                      "دخول",
                      style: TextStyle(fontFamily: 'Anaqa'),
                    ),
                    onClick: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeScreen(inputNumber)));
                      _globalKey.currentState!.save;

                      if (_globalKey.currentState!.validate()) {
                        try {} on PlatformException catch (e) {
                          //authObj.signIn(inputNumber, 'd');

                          print(e.toString());
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(e.message.toString())));
                        }
                      } else {}
                    })
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
