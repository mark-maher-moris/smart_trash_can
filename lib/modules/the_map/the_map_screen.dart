import 'package:flutter/material.dart';
import '../../shared/styles/themes.dart';

class TheMapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: 10.0,
          vertical: 20.0
        ),
        child: Column(
          children: [
            myBox(
              h: 100,
              w: 220,
              c1: Colors.green,
              child: Text(
                'Where is can ....',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://img.freepik.com/free-photo/pink-blue-pushpins-showing-marking-location-map_23-2147837134.jpg?w=1060&t=st=1676988483~exp=1676989083~hmac=7815ccbca593a0100a49e30126deb815ea7fb3ff6547f48dc686a829a0fd4c32',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
