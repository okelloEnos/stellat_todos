import 'package:flutter/material.dart';
import 'package:stellar_todo_list/features/todos/todos_barrel.dart';


class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screenOptions = [const AllTodosScreen(), const CompletedTodosScreen()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var theme =  Theme.of(context);

    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screenOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const [
        BottomNavigationBarItem(icon: Icon(Icons.list), label: "All"),
        BottomNavigationBarItem(icon: Icon(Icons.check), label: "Completed")
      ],
      onTap: (tappedIndex){
            // check if index is one and navigate or else stick to screen with bottom navigation
        if(tappedIndex == 1){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CompletedTodosScreen()));
        }
        else {

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
