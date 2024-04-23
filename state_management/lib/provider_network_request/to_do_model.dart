class ToDo {
  final String id;
  final String title;
  final String description;

  ToDo({required this.id, required this.title, required this.description});

  factory ToDo.fromJson(Map<String, dynamic> json) {
    return ToDo(id: json['id'], title: json['title'], description: json['description']);
  }
}
