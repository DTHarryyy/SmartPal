import 'package:flutter/material.dart';
import 'package:smartpal/core/widgets/appbar.dart';
import 'package:smartpal/features/home/feature_navigator.dart';
import 'package:smartpal/features/home/header.dart';

class HomeWidgetsTree extends StatelessWidget {
  const HomeWidgetsTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(height: 40),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(children: [HomeHeader(), CoreFeaturesLink()]),
        ),
      ),
    );
  }
}
