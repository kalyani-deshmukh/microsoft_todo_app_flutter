import 'package:flutter/material.dart';
import 'package:to_do/screens/rootScreen/components/TodoListWidget.dart';

class TodoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ListView(
        children: <Widget>[
          TodoListWidget(Icons.wb_sunny_outlined, 'My Day', '2'),
          TodoListWidget(Icons.star_outline_rounded, 'Important', '1'),
          TodoListWidget(Icons.date_range_rounded,'Planned', ''),
          TodoListWidget(Icons.person_outline, 'Assigned to Me', ''),
          TodoListWidget(Icons.fact_check_outlined,'Task', '17'),
          Divider(color: Colors.grey),
          TodoListWidget(Icons.format_list_bulleted, 'Ideas', '23')
        ]
    );
  }
}