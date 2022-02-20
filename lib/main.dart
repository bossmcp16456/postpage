import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Post Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Local Beal Board'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SafeArea(
            child: Column(
          children: [
            Container(
              // color: Colors.red,
              height: 30,
            ),
            Container(
              width: 300,
              child: const TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
            ),
            Container(
              // color: Colors.red,
              height: 30,
            ),
            Container(
              width: 450,
              child: const TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Promotion 1',
                ),
              ),
            ),
            Container(
              // color: Colors.red,
              height: 30,
            ),
            Container(
              width: 450,
              child: const TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Promotion 2',
                ),
              ),
            ),
            Container(
              // color: Colors.red,
              height: 30,
            ),
            Container(
              width: 450,
              child: const TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Location',
                ),
              ),
            ),
            Container(
              // color: Colors.red,
              height: 15,
            ),
            Container(
              child: Image.asset('img/promotion.png'),
            ),
            Container(
              // color: Colors.red,
              height: 15,
            ),
            Container(
              width: 450,
              child: const TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Detail',
                ),
              ),
            ),
            Container(
              // color: Colors.red,
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              FloatingActionButton.extended(
                backgroundColor: Colors.red,
                onPressed: () {},
                label: Text(
                  "Back",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              FloatingActionButton.extended(
                backgroundColor: Colors.green,
                onPressed: () {},
                label: Text(
                  "Post",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ])
          ],
        )));
  }
}
