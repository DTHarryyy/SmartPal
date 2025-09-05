import 'package:flutter/material.dart';
import 'package:smartpal/views/pages/home/widgets/feature_navigator.dart';
import 'package:smartpal/views/pages/home/widgets/header.dart';
import 'package:smartpal/views/pages/home/widgets/recent_topics.dart';

class HomeWidgetsTree extends StatelessWidget {
  const HomeWidgetsTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SmartPal', style: TextStyle(fontWeight: FontWeight.w600)),

        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
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
