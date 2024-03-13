import 'package:flutter/material.dart';

import '../../todos_barrel.dart';

class TodosList extends StatelessWidget {
  final List<Todo> listOfTodos;
  const TodosList({super.key, required this.listOfTodos});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      // for creating space in between the cards
      separatorBuilder: (_, __) => const SizedBox(height: 10.0,),
      shrinkWrap: true,
      itemCount: listOfTodos.length,
        itemBuilder: (builderContext, index){
      return TodoCard(todo: listOfTodos[index]);
    });
  }
}
