import 'package:flutter/material.dart';
import 'package:smart_trash_can/layout/code_screen.dart';
import 'package:smart_trash_can/shared/components/components.dart';
import 'package:smart_trash_can/shared/styles/themes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    myBox(
                        h: 150,
                        w: 150,
                        c1: mainColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "نقاطك",
                              style: ourStyle.copyWith(fontSize: 24),
                            ),
                            Text(
                              "50",
                              style: ourStyle,
                            ),
                          ],
                        ),
                        isCircle: true),
                    SizedBox(
                      height: 25,
                    ),
                    myBox(
                        h: 50,
                        w: 300,
                        c1: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '01210153804',
                              style: ourStyle.copyWith(fontSize: 16),
                            ),
                            Text(
                              ': رقم الحساب',
                              style: ourStyle.copyWith(fontSize: 16),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 25,
                    ),
                    myBox(
                        h: 100,
                        w: 300,
                        c1: mainColor,
                        child: Text(
                          "اقرب ماكينة ليك",
                          style: ourStyle,
                        ),
                        onClick: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CodeScreen()));
                        }),
                    SizedBox(
                      height: 25,
                    ),
                    myBox(
                        h: 100,
                        w: 300,
                        c1: mainColor,
                        child: Text(
                          "عندك زبالة ؟ \n نجيلك لحد البيت",
                          textAlign: TextAlign.center,
                          style: ourStyle,
                        ),
                        onClick: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CodeScreen()));
                        })
                  ]),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: myBox(
                    h: 100,
                    w: 340,
                    c1: mainColor,
                    child: Text(
                      "Trash It",
                      style: ourStyle,
                    ))),
          ],
        ),
      ),
    ));
  }
}
