import 'package:flutter/material.dart';
import 'package:smartpal/views/pages/home/widgets/sub%20widgets/search_input.dart';

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
        Text(
          'Hi Harry! 🙌',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
        ),
        Text(
          'Ready to boost your learning today?',
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
