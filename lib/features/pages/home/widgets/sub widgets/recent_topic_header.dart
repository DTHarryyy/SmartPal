import 'package:flutter/material.dart';

class RecentTopicHeader extends StatelessWidget {
  const RecentTopicHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Recent Topic",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black87,
              fontSize: 16,
            ),
          ),
          GestureDetector(
            child: Text(
              "View All",
              style: TextStyle(
                color: const Color.fromARGB(255, 4, 5, 5),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
