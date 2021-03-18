import 'package:cloud_firestore/cloud_firestore.dart';

class UserServices {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String collection = "users";
creatUser(Map<String ,dynamic> data) {
    _firestore.collection(collection).doc(data["userId"]).set(data);
  }
}
