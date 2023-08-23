import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/counter_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              Provider.of<CounterProvider>(context, listen: false).icreament();
            },
            child: Icon(Icons.plus_one),
          ),
          FloatingActionButton(
            onPressed: () {
              Provider.of<CounterProvider>(context, listen: false).decreament();
            },
            child: Icon(Icons.exposure_minus_1),
          )
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Counter App",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${Provider.of<CounterProvider>(context, listen: true).counterModel.count}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
            ),
          ],
        ),
      ),
    );
  }
}
