import 'package:flutter/material.dart';

class TopicRoomNavigator extends StatelessWidget {
  final IconData navigatorIcon;
  final String navigatorHeader;
  final String navigatorDescription;
  final Color? bgColor;
  final Widget pageRoute;
  // final Icon? navigatorLink;
  const TopicRoomNavigator({
    super.key,
    required this.navigatorIcon,
    required this.navigatorDescription,
    required this.navigatorHeader,
    this.bgColor,
    required this.pageRoute,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgColor,
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.19),
                  border: Border.all(width: 1, color: Colors.white12),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(navigatorIcon, size: 14, color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                navigatorHeader.toString(),
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5),
              Text(
                navigatorDescription.toString(),
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pageRoute),
                );
              },
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.19),
                  border: Border.all(width: 1, color: Colors.white12),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  Icons.keyboard_arrow_right,
                  size: 26,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
