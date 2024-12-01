import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_provider_statemanagement/counter/provider/counter_provider.dart';
import 'package:testing_provider_statemanagement/main.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Counter App Provider",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body:  Center(
        child: Text(
          context.watch<CounterProvider>().value.toString(),
          style: const TextStyle(
            fontSize: 100,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().increase();
            },
            backgroundColor: Colors.green,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().decrease();
            },
            backgroundColor: Colors.blue,
            child: const Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Icon(
                Icons.minimize,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
