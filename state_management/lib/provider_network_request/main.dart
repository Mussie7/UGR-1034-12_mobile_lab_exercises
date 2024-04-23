import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider_network_request/service_class.dart';
import 'package:state_management/provider_network_request/todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ChangeNotifierProvider<ListTodoData>(create: (context) => ListTodoData(), child: const TodoListScreen()));
  }
}