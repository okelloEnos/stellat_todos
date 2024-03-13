import 'package:flutter/material.dart';
import 'package:stellar_todo_list/features/todos/todos_barrel.dart';

class CompletedTodosScreen extends StatelessWidget {
  const CompletedTodosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Todo> listOfTodos = [Todo(id: 0, title: "title", description: "description", isCompleted: false), Todo(id: 0, title: "title", description: "description", isCompleted: true)];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Completed Task"),
      ),
      body: CompletedTodos(completedListOfTodos: listOfTodos,),
    );
  }
}
