import 'package:flutter/material.dart';

class AppBarTasksWidget extends StatelessWidget {
  const AppBarTasksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      spacing: 15,
      children: [
        Icon(Icons.playlist_add_check,color: Colors.white,size: 40,),
        Text(
          "ToDayDo",
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
