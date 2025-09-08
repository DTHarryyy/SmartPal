import 'package:flutter/material.dart';

class RecentTopicsTile extends StatelessWidget {
  const RecentTopicsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.blue[100],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(Icons.calculate, color: Colors.blue),
        ),
        title: Text(
          'Calculus',
          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        subtitle: Text(
          'Last studied yesterday',
          style: TextStyle(color: Colors.black54, height: 1, fontSize: 12),
        ),
      ),
    );
  }
}
