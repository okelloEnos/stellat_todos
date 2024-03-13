import 'package:flutter/material.dart';
import 'package:stellar_todo_list/features/home/ui/screens/home_screen.dart';
import 'package:stellar_todo_list/features/todos/ui/screens/all_todos_screen.dart';

void main() {
  runApp(const TodosApp());
}

class TodosApp extends StatelessWidget {
  const TodosApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stellar Todos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          primary: Colors.deepPurple,
          background: Colors.deepPurple.shade100,
          secondary: Colors.white
        ),
        hintColor: Colors.grey,
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple.shade300,
          iconTheme: const IconThemeData(color: Colors.white),
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.deepPurple.shade300,
          foregroundColor: Colors.white,
        ),
        cardTheme: CardTheme(
          margin: EdgeInsets.zero,
          color: Colors.white,
          elevation: 3.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
          )
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white
        )
        
      ),
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
    );
  }
}
