import 'package:flutter/material.dart';
import 'package:stellar_todo_list/features/todos/todos_barrel.dart';

class AllTodosScreen extends StatelessWidget {
  final List<Todo> listOfTodos;
  final Function(Todo) onAddTodo;
  final Function(int, String, String) onEditTodo;
  final Function(int) onDeleteTodo;
  final Function(int) onCompleteTodo;
  const AllTodosScreen({super.key, required this.listOfTodos,
    required this.onCompleteTodo, required this.onDeleteTodo,
    required this.onEditTodo, required this.onAddTodo});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        title: const Text('TODO APP'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calendar_month_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 4.0, right: 4.0, top: 10.0),
        child: listOfTodos.isEmpty ? Center(
          child: Text("There are no tasks yet",
            style: TextStyle(
                color: theme.hintColor,
                fontSize: 13.0,
                fontFamily: "Jost",
                fontWeight: FontWeight.w700
            ),
          ),
        ) : TodosList(
          listOfTodos: listOfTodos,
          onEditTodo: onEditTodo,
          onCompleteTodo: onCompleteTodo,
          onDeleteTodo: onDeleteTodo,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(100.0)),
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddTodoScreen(onAddTodo: onAddTodo,)));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
