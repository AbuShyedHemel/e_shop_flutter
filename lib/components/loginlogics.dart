// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:e_shop/screens/HomePage.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class LoginLogics extends StatefulWidget {
//   @override
//   _LoginLogicsState createState() => _LoginLogicsState();
// }

// class _LoginLogicsState extends State<LoginLogics> {
//   final GoogleSignIn googleSignIn = new GoogleSignIn();
//   final FirebaseAuth firebaseauth = FirebaseAuth.instance;
//   SharedPreferences preferences;
//   bool loading = false;
//   bool isLogedin = false;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     isSignedIn();
//   }

//   void isSignedIn() async {
//     setState(() {
//       loading = true;
//     });
//     preferences = await SharedPreferences.getInstance();
//     isLogedin = await googleSignIn.isSignedIn();
//     if (isLogedin) {
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => HomePage()));
//     }
//     setState(() {
//       loading = false;
//     });
//   }

//   Future heandleSignIn() async {
//     preferences = await SharedPreferences.getInstance();
//     setState(() {
//       loading = true;
//     });
//     GoogleSignInAccount googleuser = await googleSignIn.signIn();
//     GoogleSignInAuthentication googleSignInAuthentication =
//         await googleuser.authentication;
//     GoogleAuthCredential credential = GoogleAuthProvider.credential(
//       idToken: googleSignInAuthentication.idToken,
//       accessToken: googleSignInAuthentication.accessToken,
//     );
//     UserCredential authResult =
//         await firebaseauth.signInWithCredential(credential);
//     User user = authResult.user;
//     if (user != null) {
//       final QuerySnapshot result = await FirebaseFirestore.instance
//           .collection("users")
//           .where("id", isEqualTo: user.uid)
//           .get();
//       final List<DocumentSnapshot> documents = result.docs;
//       if (documents.length == 0) {
//         FirebaseFirestore.instance.collection("users").doc(user.uid).set({
//           "id": user.uid,
//           "user": user.displayName,
//           "profilepicture": user.photoURL,
//         });
//         await preferences.setString("id", user.uid);
//         await preferences.setString("username", user.displayName);
//         await preferences.setString("photourl", user.displayName);
//       } else {
//         await preferences.setString("id", documents[0]['id']);
//         await preferences.setString("username", documents[0]['username']);
//         await preferences.setString("photourl", documents[0]['photourl']);
//       }
//       Fluttertoast.showToast(msg: "Login Successfull");
//       setState(() {
//         loading = false;
//       });
//     } else {}
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
