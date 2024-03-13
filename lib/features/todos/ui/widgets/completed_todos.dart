import 'package:flutter/material.dart';

import '../../todos_barrel.dart';

class CompletedTodos extends StatelessWidget {
  final List<Todo> completedListOfTodos;

  const CompletedTodos({super.key, required this.completedListOfTodos});

 

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      // for creating space in between the cards
        separatorBuilder: (_, __) => const SizedBox(height: 10.0,),
        shrinkWrap: true,
        itemCount: completedListOfTodos.length,
        itemBuilder: (builderContext, index){
          return CompletedTodoCard(todo: completedListOfTodos[index]);
        });
  }
}
