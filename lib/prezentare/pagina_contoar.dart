import 'package:flutter/material.dart';

import '../functii/contoar.dart';

class PaginaContoar extends StatefulWidget {
  const PaginaContoar({super.key, required this.title});

  final String title;

  @override
  State<PaginaContoar> createState() => _PaginaContoarState();
}

class _PaginaContoarState extends State<PaginaContoar> {
  Counter _counter = Counter();

  void _incrementCounter() {
    setState(() {
      _counter.increment();
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter.decrement();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Numarul creat:',
            ),
            Text(
              _counter.value.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
