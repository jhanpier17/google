import 'package:flutter/material.dart';
import 'package:flutter_application_1/user/BLOC/provideruser.dart';
import 'package:flutter_application_1/user/UI/SCREEN/login.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_core/firebase_core.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
    runApp(MyApp());
  }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(child: MaterialApp(
      title: 'Examen Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(),
    ), bloc: Userbloc());
  }
}