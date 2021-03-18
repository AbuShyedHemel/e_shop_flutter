import 'package:e_shop/screens/HomePage.dart';
import 'package:e_shop/screens/SignInPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  await Firebase.initializeApp();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var email = preferences.getString('email');
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: email == null? SignIn(print(email)): HomePage(),
    
  ));
}
