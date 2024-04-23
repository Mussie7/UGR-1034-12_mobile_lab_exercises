import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

final counterStateProvider = StateProvider<int>((ref) => 0);

class MyHomePage extends ConsumerWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int count = ref.watch(counterStateProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$count',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
        FloatingActionButton(onPressed: () => ref.read(counterStateProvider.notifier).state--, tooltip: 'Decrement', child: const Icon(Icons.remove)),
        const SizedBox(width: 20),
        FloatingActionButton(onPressed: () => ref.read(counterStateProvider.notifier).state++, tooltip: 'Increment', child: const Icon(Icons.add)),
      ]),
    );
  }
}
