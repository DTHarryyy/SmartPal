import 'package:flutter/material.dart';
import 'package:smartpal/core/widgets/custom_text_widget.dart';
import 'package:smartpal/features/home/presentation/widgets/search_input.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  TextEditingController searchValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        SearchInputWidget(
          searchLabel: "Search...",
          searchController: searchValue,
        ),
        SizedBox(height: 20),
        CustomTextWidget(
          textValue: "Hi! HARRY",
          size: 24,
          colorValue: Colors.black87,
          fontWeight: FontWeight.w600,
          isDarkModeColor: Colors.white,
        ),
        CustomTextWidget(
          textValue: 'Ready to boost your learning today?',
          size: 14,
          colorValue: Colors.black54,
          fontWeight: FontWeight.w600,
          isDarkModeColor: Colors.white38,
        ),
      ],
    );
  }
}
