import 'package:flutter/material.dart';
import 'package:smartpal/features/pages/planner/widgets/task_tile.dart';

class PlannerWidgetsTree extends StatelessWidget {
  const PlannerWidgetsTree({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
        child: Column(children: [TaskTile()]),
      ),
    );
  }
}
