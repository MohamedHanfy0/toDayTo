import 'package:flutter/material.dart';
import 'package:to_day_do/models/model.dart';
import 'package:to_day_do/screens/widgets/item_task_widgtet.dart';

class ListTasksWidget extends StatefulWidget {
const   ListTasksWidget({super.key, required this.model});
 final  List<Model> model;

  @override
  State<ListTasksWidget> createState() => _ListTasksWidgetState();
}

class _ListTasksWidgetState extends State<ListTasksWidget> {
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
          itemCount: widget.model.length,
          itemBuilder: (context, index) {
            return ItemTaskWidget(
              isCheck: widget.model[index].isCheck,
              name: widget.model[index].name,
              onChanged: (value) {
                setState(() {
                  widget.model[index].changeCheckBox();
                  // tasks[index].isCheck = value!;
                });
              },
            );
          },
        ),
      ),
    );
  }
}
