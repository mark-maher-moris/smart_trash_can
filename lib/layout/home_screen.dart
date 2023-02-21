import 'package:flutter/material.dart';
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
                        child: Text(
                          "data",
                          style: ourStyle,
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
                              'رقم الحساب',
                              style: ourStyle,
                            )
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
                        )),
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
                        ))
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
