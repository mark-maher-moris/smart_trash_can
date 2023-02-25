import 'package:flutter/material.dart';
import 'package:smart_trash_can/shared/styles/themes.dart';
import 'package:icon_broken/icon_broken.dart';

class TrashDeliverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      myBox(
        h: 100,
        w: 400,
        c1: Colors.green,
        child:
            Text('عندك زبالة', style: ourStyle.copyWith(color: Colors.white)),
      ),
      SizedBox(
        height: 20.0,
      ),
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RubbishBox(txt: 'مخلفات معدنية', points: 200),
            RubbishBox(txt: 'مخلفات بلاستيكية', points: 150),
            RubbishBox(txt: 'مخلفات عضوية', points: 100),
            myBox(
                h: 50,
                w: 100,
                c1: Colors.white,
                child: Text('ارسال الطلب'),
                onClick: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DoneScreen()));
                })
          ],
        ),
      )
    ]));
  }
}

class DoneScreen extends StatelessWidget {
  const DoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
          child: Text(
        'تم استلام الطلب بنجاح',
        style:
            TextStyle(color: Colors.white, fontFamily: 'Anaqa', fontSize: 20),
      )),
    );
  }
}

class RubbishBox extends StatefulWidget {
  int points = 100;
  String txt;

  RubbishBox({required this.txt, required this.points, super.key});

  @override
  State<RubbishBox> createState() => _RubbishBoxState();
}

class _RubbishBoxState extends State<RubbishBox> {
  var num = 1;

  @override
  Widget build(BuildContext context) {
    return myBox(
        h: 150,
        w: 400,
        c1: mainColor,
        child: Row(
          children: [
            Image.asset(rubbish),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.txt,
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Anaqa', fontSize: 16),
                  ),
                ),
                Row(
                  children: [
                    myBox(
                        onClick: () {
                          setState(() {
                            num++;
                          });
                        },
                        h: 30,
                        w: 30,
                        c1: mainColor,
                        child: Icon(IconBroken.Plus)),
                    myBox(
                        h: 30,
                        w: 30,
                        c1: Colors.white,
                        child: Text(num.toString())),
                    myBox(
                        onClick: () {
                          setState(() {
                            num -= 1;
                          });
                        },
                        h: 30,
                        w: 30,
                        c1: mainColor,
                        child: Icon(IconBroken.Paper_Negative)),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(widget.points.toString() + "Points")
              ],
            ),
          ],
        ));
  }
}
