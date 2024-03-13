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
                  color: theme.colorScheme.primary, fontSize: 18.0
                ),),
                Text(todo.description ?? "", style: const TextStyle(fontSize: 14.0),),
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
                  icon: Icon(Icons.edit_outlined, color: theme.colorScheme.primary,),
                ),
                IconButton(
                  onPressed: () {
                    //todo: implement delete functionality
                    // deleteTask(index)
                        onDeleteTodo(todoIndex);
                  },
                  icon: Icon(Icons.delete_outline, color: theme.colorScheme.primary,),
                ),
                IconButton(
                  onPressed: () {
                    // todo: complete task
                    // toggleTaskCompletion(index);
                    onCompleteTodo(todoIndex);
                  },
                  icon: Icon(Icons.check_circle_outline, color: theme.colorScheme.primary,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
