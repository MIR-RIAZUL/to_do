class Todo{
  final int id;
  final String title;
  final String description;
  final DateTime date;
  final status;

  Todo(this.status, {required this.id, required this.title, required this.description, required this.date});
}