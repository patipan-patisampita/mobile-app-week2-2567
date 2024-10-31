import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  final String name;
  static String id = "/counter";
  const CounterPage({super.key, required this.name});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter App",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            Text(
              counter.toString(),
              style: TextStyle(
                fontSize: 200,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    decrementCounter();
                  },
                  child: Icon(Icons.remove),
                ),
                ElevatedButton(
                  onPressed: () {
                    resetCounter();
                  },
                  child: Icon(Icons.restore),
                ),
                ElevatedButton(
                  onPressed: () {
                    incrementCounter();
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
