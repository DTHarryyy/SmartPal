import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartpal/core/constant/strings.dart';
import 'package:smartpal/features/chat_bot/pages/chat_bot_page.dart';
=======
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartpal/core/constant/app_strings.dart';
import 'package:smartpal/features/auth/presentation/pages/login.dart';
import 'package:smartpal/features/auth/provider/auth_provider.dart';
import 'package:smartpal/widgets_tree.dart';
>>>>>>> 90d466716738d82a930f98ea557fe60da05d9573

class SmartPal extends ConsumerWidget {
  const SmartPal({super.key});

  @override
<<<<<<< HEAD
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: Strings.appName,
          theme: ThemeData(primarySwatch: Colors.blue),
          debugShowCheckedModeBanner: false,
          home: const ChatBotPage(),
        );
      },
=======
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
>>>>>>> 90d466716738d82a930f98ea557fe60da05d9573
    );
  }
}
