import 'package:flutter/material.dart';
import '../../shared/styles/themes.dart';

class TheMapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsetsDirectional.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Column(
          children: [
            myBox(
              h: 100,
              w: 220,
              c1: Colors.green,
              child: Text(
                'اين سلات القمامة',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
