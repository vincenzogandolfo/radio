import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Radio")),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

enum Scelta {
  facile,
  normale,
  difficle,
}

class _HomePageState extends State<HomePage> {
  Scelta scelta = Scelta.facile;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RadioListTile<Scelta>(
          title: const Text(
            "Facile",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          value: Scelta.facile,
          groupValue: scelta,
          onChanged: (value) => setState(() => scelta = value!),
        ),
        RadioListTile<Scelta>(
          title: const Text(
            "Normale",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          value: Scelta.normale,
          groupValue: scelta,
          onChanged: (value) => setState(() => scelta = value!),
        ),
        RadioListTile<Scelta>(
          title: const Text(
            "Difficile",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          value: Scelta.difficle,
          groupValue: scelta,
          onChanged: (value) => setState(() => scelta = value!),
        ),
      ],
    );
  }
}
