import 'package:flutter/material.dart';
import 'package:smartpal/features/core_feature/create_topic_room/create_topic_room.dart';
import 'package:smartpal/features/core_feature/smart_review/smart_review_widget_tree.dart';
import 'package:smartpal/features/core_feature/study_group/study_group.dart';
import 'package:smartpal/features/pages/home/widgets/sub%20widgets/card_for_feature_navigator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartpal/features/pages/home/widgets/sub%20widgets/topic_room_navigator.dart';

class CoreFeaturesLink extends StatelessWidget {
  const CoreFeaturesLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              FeaturesNavigator(
                navigatorIcon: FontAwesomeIcons.brain,
                iconSize: 16,
                navigatorHeader: "Start a Smart Review",
                navigatorDescription: "AI-generated flashcards &quizzes",
                bgColor: Colors.blue[400],
                pageRoute: SmartReview(),
              ),
              SizedBox(width: 15),
              FeaturesNavigator(
                navigatorIcon: Icons.groups_rounded,
                iconSize: 18,
                navigatorHeader: "Join a Study Group",
                navigatorDescription: "Messaging & collaboartion",
                bgColor: const Color.fromARGB(255, 44, 192, 156),
                pageRoute: StudyGroup(),
              ),
            ],
          ),
          SizedBox(height: 15),
          TopicRoomNavigator(
            navigatorIcon: Icons.create_new_folder,
            navigatorHeader: "Create a Topic Room",
            navigatorDescription: "Upload notes or code snippets",
            bgColor: Colors.blue[400],
            pageRoute: CreateTopicRoom(),
          ),
        ],
      ),
    );
  }
}
