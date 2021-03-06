import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';


abstract class BaseAuth {
  //final GoogleSignIn googleSignIn = new GoogleSignIn();
  Future<User> googleSignIn();
}

class Auth implements BaseAuth {
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Future<User> googleSignIn() async {
    final GoogleSignIn _googleSignIn = GoogleSignIn();
    final GoogleSignInAccount googleSignInAccount =
        await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleSignInAccount.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
    try {
      User user = (await _auth.signInWithCredential(credential)).user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
