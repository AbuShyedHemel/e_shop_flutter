import 'package:firebase_database/firebase_database.dart';

class UserServices {
  FirebaseDatabase database = FirebaseDatabase.instance;
  String ref = "users";
  creatUser(String uid, Map value) {
    String id = value["userId"];
    database
        .reference()
        .child("$ref/$id")
        .set(value)
        .catchError((e) => {print(e.toString())});
  }
}
