//import 'package:flutter_complete_guide/screens/auth_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class GoogleSignInProvider extends ChangeNotifier {
  //var credential;
  final googleSignIn = GoogleSignIn();
  var _check = false;

  GoogleSignInAccount? _user = null;
  GoogleSignInAccount get user => _user!;

  Future googleLogin() async {
    try {
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null || !googleUser.email.contains('@northsouth.edu'))
        return;

      _user = googleUser;
      _check = true;

      final googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.idToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      print(e.toString());
    }
    notifyListeners();
  }

  bool checkStatus() {
    return (_check != null);
  }

  Future logout() async {
    await googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
  }
}
