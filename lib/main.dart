import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smartpal/app.dart';
import 'package:smartpal/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const SmartPal());
}
