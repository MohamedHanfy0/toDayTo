import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_day_do/models/provider.dart';
import 'package:to_day_do/screens/widgets/item_task_widgtet.dart';

class ListTasksWidget extends StatelessWidget {
const   ListTasksWidget({super.key, });


 
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
        child: Consumer<taskProvider>(
          builder: (context, taskProvider tasks, child) =>  ListView.builder(
            itemCount: tasks.tasks.length,
            itemBuilder: (context, index) {
              return ItemTaskWidget(
                isCheck: tasks.tasks[index].isCheck,
                name: tasks.tasks[index].name,
                onChanged: (value) {
                  // setState(() {
                  //   widget.model[index].changeCheckBox();
                  //   // tasks[index].isCheck = value!;
                  // });
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
