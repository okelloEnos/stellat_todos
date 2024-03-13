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
                color: theme.colorScheme.primary, fontSize: 18.0
            ),),
            Text(todo.description ?? "", style: const TextStyle(fontSize: 14.0),),
          ],
        ),
      ),
    );
  }
}
