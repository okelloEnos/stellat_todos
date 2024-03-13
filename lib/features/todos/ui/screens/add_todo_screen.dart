import 'package:flutter/material.dart';
import 'package:stellar_todo_list/resources/resource_barrel.dart';

import '../../todos_barrel.dart';

class AddTodoScreen extends StatefulWidget {
  final Function(Todo) onAddTodo;
  const AddTodoScreen({super.key, required this.onAddTodo});

  @override
  State<AddTodoScreen> createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodoScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.secondary,
      appBar: AppBar(
        title: const Text("Add Task"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(controller: titleController, hintText: "Title"),
            const SizedBox(height: 10.0,),
            CustomTextField(controller: descriptionController, hintText: "Detail"),
            const SizedBox(height: 50.0,),
            CustomElevatedButton(btnText: "ADD", fontSize: 20.0, onPressed: (){
              String title = titleController.text.trim();
              String description = descriptionController.text.trim();
              // title of a todo cannot miss so validate to check
              if (title.isNotEmpty) {
                widget.onAddTodo(Todo(title: title, description: description));
                Navigator.pop(context);
              }
              else{
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Todo title is missing")));
              }
            })
          ],
        ),
      ),
    );
  }
}
