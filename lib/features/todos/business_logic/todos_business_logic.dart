// import 'package:flutter/material.dart';
//
// import '../todos_barrel.dart';
//
// class TodosDataProvider extends ChangeNotifier {
//   // list of todos within a state
//   List<Todo> todos = [];
//
//   // a function to add a new todo
//   void addTodo(Todo todo) {
//     todos.add(todo);
//     notifyListeners();
//   }
//
//   // a function to edit a todo
//   void editTodo({
//     required int index,
//     required String title,
//     required String description
//   }) {
//     todos[index].copyWith(
//       title: title,
//       description: description
//     );
//     notifyListeners();
//   }
//
//   // a function to edit a todo
//   void todoCompleted(int index) {
//     todos[index].copyWith(isCompleted: !todos[index].isCompleted);
//     notifyListeners();
//   }
//
//   // a function to delete a todo
//   void deleteTodo(int index) {
//     todos.removeAt(index);
//     notifyListeners();
//   }
// }
