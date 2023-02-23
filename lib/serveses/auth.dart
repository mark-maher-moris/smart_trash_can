import 'package:firebase_auth/firebase_auth.dart';

class AuthClass {
  FirebaseAuth instanse = FirebaseAuth.instance;

  signIn(var number, var inputPin) {
    instanse.verifyPhoneNumber(
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException e) {},
        codeSent: (String verificationId, int? resendToken) {},
        codeAutoRetrievalTimeout: (String verificationId) {}
        //  verificationCompleted: (PhoneAuthCredential credential) async {}
        ///  await auth.signInWithCredential(credential);
        );
    User? currentUser = instanse.currentUser;
    print(currentUser?.uid);
  }
}
