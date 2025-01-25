import 'package:flutter/material.dart';
import 'package:to_day_do/models/model.dart';
import 'package:to_day_do/screens/widgets/app_bar_tasks_widget.dart';
import 'package:to_day_do/screens/widgets/list_tasks_widget.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  final nameController = TextEditingController();
  List<Model> tasks = [
    Model(
      name: 'go  shoping',
    ),
    Model(name: 'meeting'),
    Model(name: 'travel egypt')
  ];

  void addNewTask(name) {
    setState(() {
      tasks.add(Model(name: name));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton(
          backgroundColor: Colors.deepOrange,
          onPressed: () {
            showModelSheetTask(context);
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
              "${tasks.length} Tasks",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            ListTasksWidget(
              model: tasks,
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> showModelSheetTask(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "Add Tasks",
                      style: TextStyle(
                        color: Colors.teal[900],
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextField(
                      autofocus: true,
                      textAlign: TextAlign.center,
                      cursorColor: Colors.teal,
                      controller: nameController,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.teal[900]),
                        onPressed: () {
                          addNewTask(nameController.text);
                          nameController.clear();
                          Navigator.pop(context);
                        },
                        child: Text(
                          'save',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
