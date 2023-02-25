import 'package:flutter/material.dart';
import 'package:smart_trash_can/shared/components/components.dart';
import 'package:smart_trash_can/shared/styles/themes.dart';
import '../modules/the_map/the_map_screen.dart';
import '../modules/trashs_deliver/trashs_deliver_screen_1.dart';
import 'package:firebase_database/firebase_database.dart';

class HomeScreen extends StatefulWidget {
  String number = '01210153804';
  HomeScreen(this.number);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DatabaseReference ref = FirebaseDatabase.instance.ref();
  //String number = '01210153804';
  int points = 0;
  @override
  void initState() {
    print(widget.number + "///////////////////------------");
    getData();
    super.initState();
  }

  Future<void> getData() async {
    print(widget.number + "------------");

    await ref.child('users/${widget.number}/points').onValue.listen((event) {
      var data = event.snapshot.value;
      setState(() {
        print(data);
        points = int.parse(data.toString());
        print(points);
      });
    });
  }

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
                              points.toString(),
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
                              builder: (context) => TheMapScreen()));
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
                              builder: (context) => TrashDeliverScreen()));
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
