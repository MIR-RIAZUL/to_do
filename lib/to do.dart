class Todo {
  final String title;
  final String description;
  final DateTime date;
  final status;
  final String subject;

  Todo(
    this.status, this.subject, {
    required this.title,
    required this.description,
    required this.date,
  });
}
