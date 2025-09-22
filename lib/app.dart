import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartpal/core/constant/app_strings.dart';
import 'package:smartpal/features/auth/presentation/pages/login.dart';
import 'package:smartpal/features/auth/provider/auth_provider.dart';
import 'package:smartpal/widgets_tree.dart';

class SmartPal extends ConsumerWidget {
  const SmartPal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: authState.when(
        data: (user) {
          if (user == null) {
            return Login();
          } else {
            return WidgetsTree();
          }
        },
        error: (error, stack) {
          return Scaffold(body: Text("There must be an error"));
        },
        loading: () =>
            const Scaffold(body: Center(child: CircularProgressIndicator())),
      ),
    );
  }
}
