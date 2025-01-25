import 'package:flutter/material.dart';
import 'package:to_day_do/models/model.dart';

class taskProvider extends ChangeNotifier {
   List<Model> tasks = [
    Model(
      name: 'go  shoping',
    ),
    Model(name: 'meeting'),
    Model(name: 'travel egypt')
  ];
}