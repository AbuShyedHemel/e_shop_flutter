import 'package:e_shop/screens/HomePage.dart';
import 'package:e_shop/screens/SignInPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  HomePage newp = new HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: IconButton(
        onPressed: () async {
          await FirebaseAuth.instance.signOut();
          User user = FirebaseAuth.instance.currentUser;
          print(user);
          final pref = await SharedPreferences.getInstance();
          await pref.clear();
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => SignIn(print(user))));
        },
        icon: Icon(Icons.logout),
      )),
    );
  }
}
