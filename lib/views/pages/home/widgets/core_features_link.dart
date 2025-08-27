import 'package:flutter/material.dart';

class CoreFeaturesLink extends StatelessWidget {
  const CoreFeaturesLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(height: 15),
            Expanded(
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 59, 62, 65),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 250,
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
