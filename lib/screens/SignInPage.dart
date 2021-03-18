import 'package:e_shop/components/auth.dart';
import 'package:e_shop/components/users.dart';
import 'package:e_shop/screens/HomePage.dart';
import 'package:e_shop/screens/SignUpPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignIn extends StatefulWidget {
  SignIn(void print);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<SignIn> {
  FirebaseAuth auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey();
  SharedPreferences preferences;
  String _email, _password;
  String finalEmail;
  Auth _auth = Auth();
  UserServices userServices = UserServices();

  Future getValidation() async {
    preferences = await SharedPreferences.getInstance();
    await preferences.getString("email");
    await preferences.getString("password");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValidation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Cover Image
              Container(
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/sample3.png'),
                )),
              ),

              SizedBox(
                height: 80,
              ),

              //login text

              Padding(
                padding: EdgeInsets.all(0.0),
                child: Column(
                  children: [
                    Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 80,
              ),

              //TextField

              Container(
                padding: EdgeInsets.all(10.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        // ignore: missing_return
                        validator: (input) {
                          if (input.isEmpty || !input.contains('@')) {
                            return 'Please Enter a valid Email';
                          }
                          return null;
                        },
                        onSaved: (input) => _email = input,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          icon: Icon(Icons.email),
                          hintText: 'Enter Your Email',
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10.0)),
                      TextFormField(
                        validator: (input) {
                          if (input.isEmpty) {
                            return 'Please Enter Password';
                          }
                          if (input.length < 5) {
                            return 'Password must be getter then 5';
                          }
                          return null;
                        },
                        onSaved: (input) => _password = input,
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 30,
              ),
              Container(
                width: 340,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () async {
                    preferences = await SharedPreferences.getInstance();
                    await preferences.setString("email", _email.toString());
                    await preferences.setString(
                        "password", _password.toString());
                    _signin();

                    // Navigator.pushReplacement(context,
                    //     MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: const Text('Login'),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(9.0),
                  color: Colors.orange[900],
                ),
              ),

              Container(
                  // ignore: deprecated_member_use
                  child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                },
                child: Text("Don't have an Account? Signup"),
              )),
              SizedBox(
                height: 20,
              ),
              Container(
                child: MaterialButton(
                  color: Colors.orange[800],
                  onPressed: () async {
                    User user = await _auth.googleSignIn();
                    if (user != null) {
                      userServices.creatUser({
                        'name': user.displayName,
                        'photo': user.photoURL,
                        'email':user.email,
                        'number':user.phoneNumber
                      });
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    }
                  },
                  child: Text("SignIn WithGoogle"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _signin() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      try {
        await auth.signInWithEmailAndPassword(
            email: _email, password: _password);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      } on FirebaseAuthException catch (e) {
        Fluttertoast.showToast(
          msg: e.message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
        );
      }
    }
  }
}
