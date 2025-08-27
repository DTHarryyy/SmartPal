import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 10),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Colors.blue[50],
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(75),
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
        Text(
          'Hi, Harry',
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
