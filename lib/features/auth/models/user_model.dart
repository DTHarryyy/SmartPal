import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String uid;
  final String name;
  final String age;
  final String email;
  final DateTime? createdAt;
  UserModel({
    required this.uid,
    required this.name,
    required this.age,
    required this.email,
    this.createdAt,
  });

  factory UserModel.fromMap(Map<String, dynamic> userMap) {
    return UserModel(
      uid: userMap['uid'],
      name: userMap['name'] ?? '',
      age: userMap['age'] ?? '',
      email: userMap['email'] ?? '',
      createdAt: userMap['createdAt'] != null
          ? (userMap['createdAt'] as Timestamp).toDate()
          : null,
    );
  }
  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "name": name,
      "age": age,
      "email": email,
      "createdAt": FieldValue.serverTimestamp(),
    };
  }
}
