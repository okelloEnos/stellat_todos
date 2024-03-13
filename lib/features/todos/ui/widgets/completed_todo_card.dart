import 'package:flutter/material.dart';

import '../../todos_barrel.dart';

class CompletedTodoCard extends StatelessWidget {
  final Todo todo;
  const CompletedTodoCard({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(todo.title ?? "", style: TextStyle(
                color: theme.colorScheme.primary,
                fontSize: 13.0,
                fontFamily: "Jost",
                fontWeight: FontWeight.w700
            ),),
            Text(todo.description ?? "", style: TextStyle(
                fontSize: 10.0,
                fontFamily: "Jost",
                color: theme.colorScheme.tertiary,
                fontWeight: FontWeight.w400),),
          ],
        ),
      ),
    );
  }
}
