// import 'package:flutter/material.dart';
//
// import '../../todos_barrel.dart';
//
// class CompletedTodoCard extends StatelessWidget {
//   final Todo todo;
//   const CompletedTodoCard({super.key, required this.todo});
//
//   @override
//   Widget build(BuildContext context) {
//     var theme = Theme.of(context);
//
//     return Card(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//              Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text(todo.title, style: TextStyle(
//                   color: theme.colorScheme.primary, fontSize: 18.0
//                 ),),
//                 Text(todo.description, style: const TextStyle(fontSize: 14.0),),
//               ],
//             ),
//             Row(
//               mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 IconButton(
//                   onPressed: () {
//                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditTodoScreen(todo: todo)));
//                   },
//                   icon: Icon(Icons.edit_outlined, color: theme.colorScheme.primary,),
//                 ),
//                 IconButton(
//                   onPressed: () {
//                     //todo: implement delete functionality
//                   },
//                   icon: Icon(Icons.delete_outline, color: theme.colorScheme.primary,),
//                 ),
//                 IconButton(
//                   onPressed: () {
//                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditTodoScreen(todo: todo)));
//                   },
//                   icon: todo.isCompleted ? const Icon(Icons.check_circle, color: Colors.green,) : Icon(Icons.check_circle_outline, color: theme.colorScheme.primary,),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
