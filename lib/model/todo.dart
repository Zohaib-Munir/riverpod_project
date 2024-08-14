class Todo {
  final String userID;
  final String description;
  final bool completed;

  Todo({
    required this.userID,
    required this.description,
    required this.completed,
  });

  Todo copyWith({String? userID, String? description, bool? completed}) {
    return Todo(
        userID: userID ?? this.userID,
        description: description ?? this.description,
        completed: completed ?? this.completed);
  }
}
