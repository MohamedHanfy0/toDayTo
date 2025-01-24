import 'package:flutter/material.dart';
import 'package:to_day_do/screens/widgets/item_task_widgtet.dart';

class ListTasksWidget extends StatelessWidget {
  const ListTasksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return ItemTaskWidget();
          },
        ),
      ),
    );
  }
}
