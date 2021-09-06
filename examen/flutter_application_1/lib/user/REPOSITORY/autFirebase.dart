import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/user/UI/SCREEN/login.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AutFirebase{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<UserCredential> singIn() async{
    GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
    GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;

      UserCredential user = await _auth.signInWithCredential(GoogleAuthProvider.credential(
        idToken: gSA.idToken, accessToken: gSA.accessToken));

    return user;
  }

  /*void signOutGoogle() async{
    await _googleSignIn.signOut();
    print("User Sign out");
    return signOut();
  }*/

  Future signOut() async{
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  
  }
}