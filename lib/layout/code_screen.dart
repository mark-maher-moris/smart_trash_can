import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../shared/styles/themes.dart';
import 'home_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CodeScreen extends StatelessWidget {
  const CodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(20),
          child: AppBar(
              systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.black,
          ))),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'تأكيد الكود',
                style: ourStyle.copyWith(fontSize: 35),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                "ملحوظة رقم التليفون سيكون هو رقم الحساب \nالذي ستضعه في سلة القمامة",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red),
              ),
              SizedBox(
                height: 60,
              ),
              PinWidget(),
              myBox(
                  h: 50,
                  w: 150,
                  c1: mainColor,
                  child: Text(
                    "تأكيد",
                    style: TextStyle(fontFamily: 'Anaqa'),
                  ),
                  onClick: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  })
            ],
          ),
        ),
      ),
    ));
  }
}

class PinWidget extends StatelessWidget {
  PinWidget({super.key});
  int inputCode = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13, right: 13),
      child: PinCodeTextField(
          autoFocus: true,
          animationCurve: Curves.bounceOut,
          keyboardType: TextInputType.number,
          enablePinAutofill: true,
          enableActiveFill: true,
          pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          autoDismissKeyboard: true,
          appContext: context,
          animationDuration: Duration(milliseconds: 300),
          length: 6,
          onCompleted: (val) {
            inputCode = int.parse(val);
            //circle loading
            print(inputCode);
          },
          onChanged: (val) {
            //inputCode = int.parse(val);
            //print(inputCode);
          }),
    );
  }
}
