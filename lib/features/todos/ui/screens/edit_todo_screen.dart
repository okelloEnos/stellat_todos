import 'package:flutter/material.dart';

import '../../../../resources/resource_barrel.dart';
import '../../todos_barrel.dart';

class EditTodoScreen extends StatefulWidget {
  final Todo todo;
  final Function(int, String, String) onEditTodo;
  final int todoIndex;

  const EditTodoScreen(
      {super.key,
      required this.todo,
      required this.onEditTodo,
      required this.todoIndex});

  @override
  State<EditTodoScreen> createState() => _EditTodoScreenState();
}

class _EditTodoScreenState extends State<EditTodoScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    titleController.text = widget.todo.title ?? "";
    descriptionController.text = widget.todo.description ?? "";
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.secondary,
      appBar: AppBar(
        title: const Text("Edit Task"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(controller: titleController, hintText: "Title"),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextField(
                controller: descriptionController, hintText: "Detail"),
            const SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomElevatedButton(
                      btnText: "Update",
                      fontSize: 15.0,
                      onPressed: () {
                        String title = titleController.text.trim();
                        String description = descriptionController.text.trim();
// title of a todo cannot miss so validate to check
                        if (title.isNotEmpty) {
                          widget.onEditTodo(
                              widget.todoIndex, title, description);
                          Navigator.pop(context);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Todo title is missing")));
                        }
                      }),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: CustomElevatedButton(
                      btnText: "Cancel",
                      fontSize: 15.0,
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
