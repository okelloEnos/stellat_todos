import 'package:flutter/material.dart';
import 'package:stellar_todo_list/features/todos/todos_barrel.dart';

class AllTodosScreen extends StatefulWidget {
  const AllTodosScreen({super.key});

  @override
  State<AllTodosScreen> createState() => _AllTodosScreenState();
}

class _AllTodosScreenState extends State<AllTodosScreen> {
  List<Todo> listOfTodos = [Todo(id: 0, title: "title", description: "description", isCompleted: false), Todo(id: 0, title: "title", description: "description", isCompleted: true)];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        title: const Text('TODO APP', style: TextStyle(fontSize: 20)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calendar_month_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 4.0, right: 4.0, top: 10.0),
        child: TodosList(listOfTodos: listOfTodos,),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(100.0)),
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AddTodoScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
