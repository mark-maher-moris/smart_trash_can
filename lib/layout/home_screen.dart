import 'package:flutter/material.dart';
import 'package:smart_trash_can/shared/components/components.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            butomn(
              text: 'TrashIt',
            ),
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 35.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'نقاطك',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '50',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    backgroundColor: Colors.green.withOpacity(.7),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  butomn(
                    text: 'اقرب سلة لك على الخريطة',
                    width: double.infinity
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  butomn(
                      text: 'خدمة من المنزل',
                      width: double.infinity
                  ),
                ],
              ),
            ) ,
          ],
        ),
      ),
    );
  }
}
