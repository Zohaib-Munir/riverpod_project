import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_project/data/todo_data.dart';
import 'package:riverpod_project/model/todo.dart';

class TodoState extends Notifier<List<Todo>> {
  @override
  List<Todo> build() {
    return dummyTodo;
  }

  void toggle(String id) {
    state = [
      for (final element in state)
        if (element.userID == id)
          element.copyWith(completed: !element.completed)
        else
          element
    ];
  }

  void remove(String id) {
    state = [
      for (final element in state)
        if (element.userID != id) element
    ];
  }
}

final todoProvider = NotifierProvider<TodoState, List<Todo>>(() {
  return TodoState();
});
