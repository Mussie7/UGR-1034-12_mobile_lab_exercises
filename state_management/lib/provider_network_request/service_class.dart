import 'dart:convert';
import 'package:flutter/material.dart';

import 'to_do_model.dart';
import 'package:http/http.dart' as http;

Future<List<ToDo>> getTodos() async {
  final response = await http.get(Uri.parse("https://mocki.io/v1/29b90fb2-e0b1-4c13-ada8-3df4c047f955"));
  if (response.statusCode == 200) {
    return (jsonDecode(response.body) as List).map((json) => ToDo.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load todos');
  }
}

// Future<ToDo> getSingleTodo(String id) async {
//   final response = await http.get(Uri.parse("https://mocki.io/v1/$id"));
//   if (response.statusCode == 200) {
//     return ToDo.fromJson(jsonDecode(response.body));
//   } else {
//     throw Exception('Failed to load todo details');
//   }
// }

class ListTodoData extends ChangeNotifier {
  List<ToDo>? todos;
  getTodoData() async {
    todos = (await getTodos());
    notifyListeners();
  }
}

// class SingleTodoData extends ChangeNotifier {
//   final String id;

//   SingleTodoData({required this.id});

//   ToDo? todo;
//   getTodoData() async {
//     todo = (await getSingleTodo(id));
//     notifyListeners();
//   }
// }
