import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartpal/features/auth/repository/auth_repository.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository();
});

final authStateProvider = StreamProvider<User?>((ref) {
  final authRepo = ref.watch(authRepositoryProvider);
  return authRepo.authStateChanges;
});

final userIdProvider = Provider<String?>((ref) {
  final authState = ref.watch(authStateProvider);
  return authState.maybeWhen(data: (user) => user?.email, orElse: () => null);
});
final userEmailProvider = Provider<String?>((ref) {
  final authState = ref.watch(authStateProvider);
  return authState.maybeWhen(data: (user) => user?.uid, orElse: () => null);
});
