import 'package:flutter/material.dart';

import '../../todos_barrel.dart';

class TodoCard extends StatelessWidget {
  final Todo todo;

  final Function(int, String, String) onEditTodo;
  final int todoIndex;
  final Function(int) onDeleteTodo;
  final Function(int) onCompleteTodo;

  const TodoCard({super.key, required this.todo, required this.todoIndex,
    required this.onCompleteTodo, required this.onDeleteTodo, required this.onEditTodo});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Column(
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
           (todo.isCompleted ?? false) ? const SizedBox.shrink() : Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditTodoScreen(
                        todo: todo, onEditTodo: onEditTodo, todoIndex: todoIndex,)));
                  },
                  icon: Icon(Icons.edit_outlined, color: theme.colorScheme.outline,),
                ),
                IconButton(
                  onPressed: () {
                        onDeleteTodo(todoIndex);
                  },
                  icon: Icon(Icons.delete_outline, color: theme.colorScheme.outline,),
                ),
                IconButton(
                  onPressed: () {
                    onCompleteTodo(todoIndex);
                  },
                  icon: Icon(Icons.check_circle_outline, color: theme.colorScheme.outline,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
