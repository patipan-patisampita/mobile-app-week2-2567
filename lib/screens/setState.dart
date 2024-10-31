import 'package:flutter/material.dart';
import 'package:week2/screens/initialState.dart';

class SetStateDemo extends StatefulWidget {
  const SetStateDemo({super.key});

  @override
  State<SetStateDemo> createState() => _SetStateDemoState();
}

class _SetStateDemoState extends State<SetStateDemo> {
  String setStateValue = "DevOps Tech";
  String initStateValue = "AI-augmented software engineering";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initStateValue = initStateValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Set state"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(setStateValue),
          ),
          Center(
            child: Text(initStateValue),
          ),
          const Center(
            child: Text("Prompt engineering:"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            setStateValue = "Developer productivity";
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const InitialState()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
