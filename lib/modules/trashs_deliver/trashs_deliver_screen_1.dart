import 'package:flutter/material.dart';
import 'package:smart_trash_can/shared/styles/themes.dart';

class TrashDeliverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsetsDirectional.symmetric(horizontal: 10.0, vertical: 50.0),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              myBox(
                h: 100,
                w: 220,
                c1: Colors.green,
                child: Text(
                  'you have scraps ...',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: glowColor,
                              blurRadius: 5,
                              offset: Offset(0, 5))
                        ],
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green.withOpacity(.9),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Image(
                              image: AssetImage(
                                "lib/assets/rubbish.png",
                              ),
                              width: 150.0,
                              height: 150.0,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'Plastic waste',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 15.0,
                                      child: Text(
                                        '+',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      backgroundColor:
                                          Colors.green.withOpacity(.7),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Container(
                                      width: 15.0,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: glowColor,
                                              blurRadius: 18,
                                              offset: Offset(0, 5))
                                        ],
                                        shape: BoxShape.rectangle,
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Text(
                                        '1',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    CircleAvatar(
                                      radius: 15.0,
                                      child: Text(
                                        '-',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      backgroundColor:
                                          Colors.green.withOpacity(.7),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '200',
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      'Points',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: glowColor,
                              blurRadius: 5,
                              offset: Offset(0, 5))
                        ],
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green.withOpacity(.9),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Image(
                              image: AssetImage(
                                "lib/assets/rubbish.png",
                              ),
                              width: 150.0,
                              height: 150.0,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'Metal waste',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 15.0,
                                      child: Text(
                                        '+',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      backgroundColor:
                                          Colors.green.withOpacity(.7),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Container(
                                      width: 15.0,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: glowColor,
                                              blurRadius: 18,
                                              offset: Offset(0, 5))
                                        ],
                                        shape: BoxShape.rectangle,
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Text(
                                        '1',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    CircleAvatar(
                                      radius: 15.0,
                                      child: Text(
                                        '-',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      backgroundColor:
                                          Colors.green.withOpacity(.7),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '200',
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      'Points',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: glowColor,
                              blurRadius: 5,
                              offset: Offset(0, 5))
                        ],
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green.withOpacity(.9),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Image(
                              image: AssetImage(
                                "lib/assets/rubbish.png",
                              ),
                              width: 150.0,
                              height: 150.0,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'Organic waste ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 15.0,
                                      child: Text(
                                        '+',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      backgroundColor:
                                          Colors.green.withOpacity(.7),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Container(
                                      width: 15.0,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: glowColor,
                                              blurRadius: 18,
                                              offset: Offset(0, 5))
                                        ],
                                        shape: BoxShape.rectangle,
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Text(
                                        '1',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    CircleAvatar(
                                      radius: 15.0,
                                      child: Text(
                                        '-',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      backgroundColor:
                                          Colors.green.withOpacity(.7),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '200',
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      'Points',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    myBox(
                      h: 50,
                      w: 250,
                      c1: Colors.green,
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
