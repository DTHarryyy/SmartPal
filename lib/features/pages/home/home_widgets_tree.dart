import 'package:flutter/material.dart';
import 'package:smartpal/features/general_widget/appbar.dart';
import 'package:smartpal/features/pages/home/widgets/feature_navigator.dart';
import 'package:smartpal/features/pages/home/widgets/header.dart';
import 'package:smartpal/features/pages/home/widgets/recent_topics.dart';

class HomeWidgetsTree extends StatelessWidget {
  const HomeWidgetsTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(height: 40),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [HomeHeader(), CoreFeaturesLink(), RecentTopics()],
          ),
        ),
      ),
    );
  }
}
