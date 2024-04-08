import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'navigation demo',
      home: ScreenOne(),
    );
  }
}

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Screen One")),
      body: Center(
          child: ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) => ScreenThree(), settings: const RouteSettings(arguments: "data from one")));
              },
              child: const Text("Next"))),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Screen Two")),
      body: Center(child: ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text("Back"))),
    );
  }
}

class ScreenThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final text = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
        appBar: AppBar(title: const Text("Screen Three")),
        body: Column(
          children: [Text(text), ElevatedButton(onPressed: () => Navigator.pop(context, "Yes"), child: const Text("Go Back"))]
        ));
  }
}
