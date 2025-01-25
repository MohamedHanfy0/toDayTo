import 'package:flutter/material.dart';

class ItemTaskWidget extends StatelessWidget {
  const ItemTaskWidget(
      {super.key,
      required this.isCheck,
      required this.name,
      required this.onChanged});

  final bool isCheck;
  final String name;
  final void Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
            color: isCheck ? Colors.green : Colors.black,
            fontWeight: isCheck ? FontWeight.bold : FontWeight.w500,
            fontSize: isCheck ? 18 : 14),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal,
        value: isCheck,
        onChanged: onChanged,
      ),
    );
  }
}
