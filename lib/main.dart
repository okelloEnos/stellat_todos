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
            seedColor: const Color(0XFF9395D3),
          primary: const Color(0XFF9395D3),
          onPrimary: Colors.white,
          secondary: Colors.white,
          onSecondary: const Color(0XFF9395D3),
          tertiary: Colors.black,
          onTertiary: Colors.white,
          background: const Color(0XFFD6D7EF),
          onBackground: Colors.white,
          outline: const Color(0XFFB3B7EE),
        ),
        hintColor: const Color(0XFF8B8787),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0XFF9395D3),
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white,
              fontSize: 24.0, fontFamily: "Jost",
              fontWeight: FontWeight.w700
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0XFF9395D3),
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
        ),
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: Color(0XFF9395D3),
          contentTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 13.0,
              fontFamily: "Jost",
              fontWeight: FontWeight.w700
          )
        )
        
      ),
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
    );
  }
}
