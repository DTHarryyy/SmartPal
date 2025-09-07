import 'package:flutter/material.dart';
import 'package:smartpal/views/core%20feature/smart_review/widgets/generate_topic.dart';

class SmartReview extends StatelessWidget {
  const SmartReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: GenerateTopic()),
    );
  }
}
