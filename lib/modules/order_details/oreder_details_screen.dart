import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:smart_trash_can/shared/components/components.dart';

import '../../shared/styles/themes.dart';

class OrderDetailsScreen extends StatelessWidget {

  var homePlaceLocationController = TextEditingController() ;
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
                  'Order Details...',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Expanded(
                        child: defaultFormField(
                          textInputType:TextInputType.text,
                          function: (String? value)
                          {
                            if(value!.isEmpty)
                              return 'Please enter home location' ;
                          },
                          prefixIcon: IconBroken.Location,
                          controller: homePlaceLocationController,
                          lable: 'home place',

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Expanded(
                        child: defaultFormField(
                          textInputType:TextInputType.text,
                          function: (String? value)
                          {
                            if(value!.isEmpty)
                              return 'Please enter house number' ;

                          },
                          prefixIcon: IconBroken.Home,
                          controller: homePlaceLocationController,
                          lable: 'house number',

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Expanded(
                        child: defaultFormField(
                          textInputType:TextInputType.text,
                          function: (String? value)
                          {
                            if(value!.isEmpty)
                              return 'Please enter floor number' ;

                          },
                          prefixIcon: IconBroken.Info_Circle,
                          controller: homePlaceLocationController,
                          lable: 'floor number',

                        ),
                      ),
                    ),
                    myBox(
                      h: 50,
                      w: 250,
                      c1: Colors.green,
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white ,
                          fontWeight: FontWeight.bold ,
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
