class Todo{
  final String? title;
  final String? description;
  final bool? isCompleted;

  Todo({
    this.title,
    this.description,
    this.isCompleted
  });

  Todo copyWith({
    String? title,
    String? description,
    bool? isCompleted
  }) {
    return Todo(
      title: title ?? this.title,
      description: description ?? this.description,
      isCompleted: isCompleted ?? this.isCompleted
    );
  }

}