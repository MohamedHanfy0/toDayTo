import 'package:flutter/material.dart';
import 'package:to_day_do/screens/widgets/app_bar_tasks_widget.dart';
import 'package:to_day_do/screens/widgets/list_tasks_widget.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton(
          backgroundColor: Colors.deepOrange,
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text("Add Tasks"),
                            TextField(

                            ),
                            ElevatedButton(
                                onPressed: (){},
                                child: Text(''),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                });
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.teal[400],
      body: Container(
        margin: EdgeInsets.only(left: 20, top: 35, right: 20, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            AppBarTasksWidget(),
            Text(
              "4 Tasks",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            ListTasksWidget(),
          ],
        ),
      ),
    );
  }
}
