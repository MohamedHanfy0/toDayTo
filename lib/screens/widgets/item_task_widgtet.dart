import 'package:flutter/material.dart';

class ItemTaskWidget extends StatefulWidget {
  const ItemTaskWidget({super.key});

  @override
  State<ItemTaskWidget> createState() => _ItemTaskWidgetState();
}

class _ItemTaskWidgetState extends State<ItemTaskWidget> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "go Shoping",
        style: TextStyle(
          color: isCheck ? Colors.green : Colors.red,
          fontWeight: isCheck ? FontWeight.bold : FontWeight.w500,
          fontSize: isCheck ? 18 : 14
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal,
        value: isCheck,
        onChanged: (value) {
          isCheck = value!;
          setState(() {});
        },
      ),
    );
  }
}
