import 'package:flutter/material.dart';
import 'package:stellar_todo_list/features/todos/todos_barrel.dart';

class CompletedTodosScreen extends StatelessWidget {
  final List<Todo> listOfCompletedTodos;
  const CompletedTodosScreen({super.key, required this.listOfCompletedTodos});

  @override
  Widget build(BuildContext context) {
  var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Completed Task"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 4.0, right: 4.0, top: 10.0),
        child: listOfCompletedTodos.isEmpty ? Center(
          child: Text("There are no completed tasks yet",
          style: TextStyle(color: theme.hintColor),
          ),
        ) : CompletedTodos(
          completedListOfTodos: listOfCompletedTodos,
        ),
      ),
    );
  }
}
