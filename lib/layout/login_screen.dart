import 'package:flutter/material.dart';
import 'package:smart_trash_can/shared/styles/themes.dart';
import 'package:icon_broken/icon_broken.dart';
import '../serveses/auth.dart';
import 'code_screen.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  bool isLoading = false;
  AuthClass authObj = AuthClass();
  String inputNumber = '102856230';
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
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'ادخل المطلوب هنا';
                    }
                  },
                  onSaved: (val) {
                    inputNumber = val!;
                    print(inputNumber + "ffffffffffffff");
                  },
                  decoration: InputDecoration(
                      hintStyle: TextStyle(fontFamily: 'Anaqa'),
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
                Text(
                  "ملحوظة رقم التليفون سيكون هو رقم الحساب \nالذي ستضعه في سلة القمامة",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red),
                ),
                SizedBox(
                  height: 60,
                ),
                custemTF(
                    icn: IconBroken.Call,
                    hintTxt: ' رقم التليفون',
                    saved: (val) {
                      inputNumber = val!;
                      print(val);
                    }),
                custemTF(
                  icn: IconBroken.User,
                  hintTxt: 'الاسم',
                ),
                myBox(
                    h: 50,
                    w: 150,
                    c1: mainColor,
                    child: Text(
                      "ارسل كود التفعيل ",
                      style: TextStyle(fontFamily: 'Anaqa'),
                    ),
                    onClick: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CodeScreen()));
                      //authObj.signIn(inputNumber, 'd');
                      _globalKey.currentState?.validate();
                      _globalKey.currentState?.save;
                      print(inputNumber);
                    })
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
