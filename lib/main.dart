import 'package:flutter/material.dart';
import 'package:week2/home.dart';
import 'package:week2/widgets/counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      // home: HomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        CounterPage.id: (context) => const CounterPage(name: 'counter'),
      },
    );
  }
}
