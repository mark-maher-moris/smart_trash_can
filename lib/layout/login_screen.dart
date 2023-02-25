import 'package:firebase_core/firebase_core.dart';
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
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else {
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
                            "اختار كود  مكون من 4 ارقام ",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 25),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          CustemTF(
                            max: 4,
                            icn: IconBroken.Message,
                            hintTxt: 'انشاء كود',
                            // saved: (val) {
                            //   inputNumber = val;
                            // },
                            changed: (val) {
                              inputNumber = val;
                              print(inputNumber);
                            },
                          ),
                          CustemTF(
                            max: 12,
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
                                isLoading = true;
                                _globalKey.currentState!.save();
                                print(inputNumber);
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => HomeScreen(
                                          inputNumber,
                                        )));
                              })
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
        });
  }
}
