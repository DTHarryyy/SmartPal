import 'package:flutter/material.dart';
import 'package:smartpal/core/widgets/custom_text_widget.dart';

class FeaturesNavigator extends StatelessWidget {
  final IconData? navigatorIcon;
  final double? iconSize;
  final String? navigatorHeader;
  final String? navigatorDescription;
  final Color? bgColor;
  final Widget? pageRoute;
  // final Icon? navigatorLink;
  const FeaturesNavigator({
    super.key,
    this.navigatorIcon,
    this.iconSize,
    this.navigatorDescription,
    this.navigatorHeader,
    this.bgColor,
    required this.pageRoute,
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
                CustomTextWidget(
                  textValue: navigatorHeader.toString(),
                  size: 16,
                  colorValue: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 5),
                CustomTextWidget(
                  textValue: navigatorDescription.toString(),
                  size: 13,
                  colorValue: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => pageRoute!),
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
      ),
    );
  }
}
