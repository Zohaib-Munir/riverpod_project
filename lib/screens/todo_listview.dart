import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_project/model/todo.dart';
import 'package:riverpod_project/riverpod/notifier.dart';

class TodoListView extends ConsumerWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Todo> todo = ref.watch(todoProvider);
    return ListView(
      children: [
        for (final element in todo)
          CheckboxListTile(
            value: element.completed,
            onChanged: (value) {
              ref.read(todoProvider.notifier).toggle(element.userID);
            },
            title: Text(
              element.description,
              style: GoogleFonts.urbanist(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ],
    );
  }
}
