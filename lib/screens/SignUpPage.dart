import 'package:e_shop/screens/SignInPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Signup extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<Signup> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  // ignore: unused_field
  String _email, _password, _name, _phone, _confirmpassword;

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

              SizedBox(height: 20),

              //login text

              Padding(
                padding: EdgeInsets.all(0.0),
                child: Column(
                  children: [
                    Text(
                      'SIGNUP',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),

              //TextField

              Container(
                padding: EdgeInsets.all(5.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(45.0)),
                      //name
                      TextFormField(
                        onSaved: (input) => _name = input,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          icon: Icon(Icons.people),
                          hintText: 'Name',
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5.0)),
                      //phone
                      TextFormField(
                        onSaved: (input) => _phone = input,
                        keyboardType: TextInputType.phone,
                        validator: (input) {
                          if (input.isEmpty) {
                            return 'PLease Enter Phone Number';
                          }
                          if (!input.contains('0')) {
                            return 'invalid phone';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          icon: Icon(Icons.phone),
                          hintText: 'Phone',
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5.0)),
                      //email
                      TextFormField(
                        // ignore: missing_return
                        validator: (input) {
                          if (input.isEmpty) {
                            return 'PLease Enter your Email';
                          }
                          if (!input.contains('@')) {
                            return 'invalid email';
                          }
                          return null;
                        },
                        onSaved: (input) => _email = input,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          icon: Icon(Icons.email),
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5.0)),
                      //password
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
                      Padding(padding: EdgeInsets.all(5.0)),
                      TextFormField(
                        onSaved: (input) => _confirmpassword = input,
                        validator: (input) {
                          if (input.isEmpty) {
                            return 'Please Enter Password';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          hintText: 'Confirm Password',
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
                  onPressed: () {
                    
                    _signup();
                    
                  },
                  child: const Text('Signup'),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(9.0),
                  color: Colors.orange[900],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _signup() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _email,
          password: _password,
        );
        Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
      } catch (e) {
        print(e.message);
      }
    }
  }
}
