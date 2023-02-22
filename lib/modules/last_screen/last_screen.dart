import 'package:flutter/material.dart';
import 'package:smart_trash_can/shared/styles/themes.dart';

class LastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You have 200 points',
                    style: TextStyle(
                      color: Colors.green.withOpacity(.7) ,
                      fontSize: 25.0 ,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              myBox(
                h: 100,
                w: 200,
                c1: Colors.green,
                child: Text(
                  'Donate points',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              myBox(
                h: 100,
                w: 200,
                c1: Colors.green,
                child: Text(
                  'add points',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
