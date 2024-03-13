import 'package:flutter/material.dart';

import '../../todos_barrel.dart';

class TodosList extends StatelessWidget {
  final List<Todo> listOfTodos;
  final Function(int, String, String) onEditTodo;
  final Function(int) onDeleteTodo;
  final Function(int) onCompleteTodo;
  const TodosList({super.key, required this.listOfTodos, required this.onEditTodo,
    required this.onCompleteTodo, required this.onDeleteTodo});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      // for creating space in between the cards
      separatorBuilder: (_, __) => const SizedBox(height: 10.0,),
      shrinkWrap: true,
      itemCount: listOfTodos.length,
        itemBuilder: (builderContext, index){
      return TodoCard(
        todo: listOfTodos[index],
        onEditTodo: onEditTodo,
        onCompleteTodo: onCompleteTodo,
        onDeleteTodo: onDeleteTodo,
        todoIndex: index,);
    });
  }
}
