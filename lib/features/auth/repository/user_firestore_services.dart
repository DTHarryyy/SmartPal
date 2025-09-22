import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:smartpal/features/auth/models/user_model.dart';

class UserFirestoreServices {
  final firestore = FirebaseFirestore.instance.collection("UserInformation");

  Future<void> addUserInformation(UserModel user) async {
    try {
      await firestore.doc(user.uid).set(user.toMap());
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<String?> getName(String uid) async {
    final doc = await firestore.doc(uid).get();

    return doc.data()?['name'] as String?;
  }
}
