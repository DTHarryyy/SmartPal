import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartpal/features/auth/repository/user_firestore_services.dart';

final userInformationProvider = Provider<UserFirestoreServices>((ref) {
  return UserFirestoreServices();
});
