import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:icon_broken/icon_broken.dart';

//default form field ...
//نستخدمه ك text form field جاهز

Widget defaultFormField({
  required TextInputType textInputType,
  required dynamic function,
  dynamic onTap,
  required IconData prefixIcon,
  required TextEditingController controller,
  required String lable,
  var onSubmit,
  bool isPasswordShown = false,
  IconData? suffixIcon,
}) =>
    TextFormField(
      onFieldSubmitted: onSubmit,
      controller: controller,
      obscureText: isPasswordShown,
      decoration: InputDecoration(
        labelText: lable,
        fillColor: Colors.white,
        prefixIcon: Icon(
          prefixIcon,
        ),
        suffixIcon: GestureDetector(
          onTap: onTap,
          child: Icon(
            suffixIcon,
          ),
        ),
        border: OutlineInputBorder(),
      ),
      validator: function,
    );

Widget butomn({
  double width = double.infinity,
  required String text,
  bool isUpper = true,
  double radius = 15.0,
  final VoidCallback? function,
}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: Colors.green.withOpacity(.7),
      ),
      width: width,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpper ? text.toUpperCase() : text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

// نستخدم my devider لو حبينا نعمل خط او ليست
Widget myDivider() => Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 10.0,
        end: 10.0,
      ),
      child: Container(
        height: 1.0,
        width: double.infinity,
        color: Colors.grey[300],
      ),
    );

//نستخدمها لو حبينا نعمل navigate
void navigateTo(context, Widget) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => Widget,
    ));

//نستخدمها لو عايزين نعمل navigate بدون رجوع للصفحة اللي قبلها (في حالة ال on boarding )
void navigateToAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => widget),
      (Route<dynamic> route) => false,
    );

//ديه باكدج بتظهر رسالة على الشاشة
void showToast({
  required String message,
  required ToastStates states,
}) =>
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: shooseToastColor(states),
      textColor: Colors.white,
      fontSize: 16.0,
    );

enum ToastStates { SUCCESS, ERROR, WARNING }

Color shooseToastColor(ToastStates states) {
  Color color;
  switch (states) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
    case ToastStates.WARNING:
      color = Colors.amber;
      break;
  }
  return color;
}

Widget defultAppBar({
  required BuildContext context,
  String? title,
  List<Widget>? actions,
}) =>
    AppBar(
      elevation: 0.0,
      titleSpacing: 1.0,
      leading: IconButton(
        color: Colors.black,
        icon: Icon(
          IconBroken.Arrow___Left_2,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        '${title}',
      ),
      actions: actions,
    );
