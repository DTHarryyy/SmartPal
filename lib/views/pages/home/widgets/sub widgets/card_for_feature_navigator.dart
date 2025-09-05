import 'package:flutter/material.dart';

class FeaturesNavigator extends StatelessWidget {
  final IconData? navigatorIcon;
  final double? iconSize;
  final String? navigatorHeader;
  final String? navigatorDescription;
  final Color? bgColor;
  // final Icon? navigatorLink;
  const FeaturesNavigator({
    super.key,
    this.navigatorIcon,
    this.iconSize,
    this.navigatorDescription,
    this.navigatorHeader,
    this.bgColor,
    // this.navigatorLink,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgColor,
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: Icon(
                    navigatorIcon,
                    size: iconSize,
                    color: Colors.white,
                  ),
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
      ),
    );
  }
}
