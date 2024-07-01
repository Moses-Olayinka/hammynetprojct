import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:hammynet/constant/constants.dart';

class MobileAuthsSrvices {
  static bool checkAuthentication() {
    User? user = auth.currentUser;
    if (user == null) {
      return false;
    }
    return true;
  }

  static receiveOPT(
      {required BuildContext context, required String mobileNo}) async {
    try {
      await auth.verifyPhoneNumber(
        verificationCompleted: (PhoneAuthCredential credentials) {},
        verificationFailed: (FirebaseAuthException exception) {},
        codeSent: (String verificationID, int? resendToken) {},
        codeAutoRetrievalTimeout: (String verificatioID) {},
      );
    } catch (e) {}
  }
}
