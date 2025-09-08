import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartpal/features/core_feature/smart_review/widgets/sub_widgets/summary/ai_summary.dart';
import 'package:smartpal/features/core_feature/smart_review/widgets/sub_widgets/topic_title.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String summarizedTextControl =
        "JavaScript is a versatile programming language mainly used for web development. "
        "It allows developers to create dynamic and interactive web pages by manipulating the DOM. "
        "JavaScript can run both on the client-side in browsers and on the server-side using Node.js. "
        "It supports features like asynchronous programming, event handling, and modular code structure. "
        "Overall, JavaScript is considered one of the core technologies of the web, alongside HTML and CSS.";

    const String topicTitle = "Javascript";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Smart Review',
          style: GoogleFonts.outfit(fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 15),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopicTitle(topicTitle: topicTitle),
            AiSummary(summarize: summarizedTextControl),
          ],
        ),
      ),
    );
  }
}
