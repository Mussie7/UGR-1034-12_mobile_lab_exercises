import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'to_do_model.dart';
import 'service_class.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todos')),
      body: Consumer<ListTodoData>(
        builder: (context, listTodoData, child) {
          if (listTodoData.todos == null) {
            listTodoData.getTodoData(); // Fetch todos if data is not available
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: listTodoData.todos!.length,
              itemBuilder: (context, index) {
                final todo = listTodoData.todos![index];
                return ListTile(
                  title: Text(todo.title),
                  subtitle: Text(todo.description),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TodoDetailScreen(todo: todo),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}


class TodoDetailScreen extends StatelessWidget {
  final ToDo todo;

  const TodoDetailScreen({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              todo.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              todo.description,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}