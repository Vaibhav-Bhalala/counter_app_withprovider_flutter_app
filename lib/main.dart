import 'package:counter_app/provider/counter_provider.dart';
import 'package:counter_app/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CounterProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.green),
      routes: {
        '/': (context) => HomePage(),
      },
    ),
  ));
}
