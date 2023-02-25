import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthClass {
  FirebaseAuth instanse = FirebaseAuth.instance;
  Future<void> verifyOTP(verfiId, smsCode) async {
    await instanse.signInWithCredential(PhoneAuthProvider.credential(
        verificationId: verfiId, smsCode: smsCode));
  }

  Future<void> signIn({String? number, var inputPin, context, verId}) async {
    instanse.verifyPhoneNumber(
        timeout: Duration(seconds: 30),
        verificationCompleted: (PhoneAuthCredential credential) {
          snack(context: context, txt: "Auth complited");
        },
        verificationFailed: (FirebaseAuthException e) {
          snack(context: context, txt: "Auth Filled");
        },
        codeSent: (String verificationId, int? resendToken) {
          verId = verificationId;
        },
        codeAutoRetrievalTimeout: (String verificationId) {}
        //  verificationCompleted: (PhoneAuthCredential credential) async {}
        ///  await auth.signInWithCredential(credential);
        );
    User? currentUser = instanse.currentUser;
    print(currentUser?.uid);
  }
}

void snack({txt, context}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(txt)));
}
