import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_project/screens/todo_listview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFF6FB7A),
        centerTitle: true,
        title: Text(
          "Riverpod Project",
          style: GoogleFonts.urbanist(
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
      ),
      body: const TodoListView(),
    );
  }
}
