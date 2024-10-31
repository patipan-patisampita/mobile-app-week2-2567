import 'package:flutter/material.dart';

class InitialState extends StatefulWidget {
  const InitialState({super.key});

  @override
  State<InitialState> createState() => _InitialStateState();
}

class _InitialStateState extends State<InitialState> {
  String value = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      value = "Cloud-native";
    });
    print("Initial state");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Init State"),
      ),
      body: Center(
        child: Text(value),
      ),
    );
  }
}
