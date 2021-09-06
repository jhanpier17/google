import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/user/REPOSITORY/autFireBase.dart';

class AutRepository{
  final _autFirebase = AutFirebase();
  Future <UserCredential> singInFirebase() => _autFirebase.singIn();
  Future singOutFirebase() => _autFirebase.signOut();
}