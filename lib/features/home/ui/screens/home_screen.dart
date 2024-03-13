import 'package:flutter/material.dart';
import 'package:stellar_todo_list/features/todos/todos_barrel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final screenOptions = [const AllTodosScreen(), const CompletedTodosScreen()];
  int currentIndex = 0;

  // list of todos within a state
  List<Todo> todos = [];

  // list of pending todos
  List<Todo> pendingTodos = [];

  // list of completed todos
  List<Todo> completedTodos = [];

  // a function to add a new todo
  void addTodo(Todo todo) {
    setState(() {
      todos.add(todo);
    });
  }

  // a function to edit a todo
  void editTodo(int index, String title, String description) {
    setState(() {
      Todo updatedTodo =
          todos[index].copyWith(title: title, description: description);
      // remove the previous todo before adding the updated one
      todos.removeAt(index);
      todos.insert(index, updatedTodo);
    });
  }

  // a function to edit a todo
  void todoCompleted(int index) {
    setState(() {
      Todo completedTodo = todos[index].copyWith(isCompleted: true);
      // remove the previous todo before updating
      todos.removeAt(index);
      todos.insert(index, completedTodo);
    });
  }

  // a function to delete a todo
  void deleteTodo(int index) {
    setState(() {
      todos.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    pendingTodos =
        todos.where((todo) => (todo.isCompleted ?? false) == false).toList();
    completedTodos =
        todos.where((todo) => (todo.isCompleted ?? false) == true).toList();

    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          AllTodosScreen(
            listOfTodos: pendingTodos,
            onAddTodo: addTodo,
            onEditTodo: editTodo,
            onCompleteTodo: todoCompleted,
            onDeleteTodo: deleteTodo,
          ),
          CompletedTodosScreen(
            listOfCompletedTodos: completedTodos,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "All"),
          BottomNavigationBarItem(icon: Icon(Icons.check), label: "Completed")
        ],
        onTap: (tappedIndex) {
          // check if index is one and navigate or else stick to screen with bottom navigation
          if (tappedIndex == 1) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CompletedTodosScreen(
                    listOfCompletedTodos: completedTodos)));
          } else {
            setState(() {
              currentIndex = tappedIndex;
            });
          }
        },
        selectedItemColor: theme.colorScheme.primary,
        unselectedItemColor: theme.hintColor,
        selectedLabelStyle: TextStyle(color: theme.colorScheme.primary),
        unselectedLabelStyle: TextStyle(color: theme.hintColor),
      ),
    );
  }
}
