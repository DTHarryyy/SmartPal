import 'package:flutter/material.dart';
import 'package:smartpal/views/pages/home/widgets/sub%20widgets/recent_topic_header.dart';
import 'package:smartpal/views/pages/home/widgets/sub%20widgets/recent_topics_tile.dart';

class RecentTopics extends StatelessWidget {
  const RecentTopics({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [RecentTopicHeader(), RecentTopicsTile()]);
  }
}
