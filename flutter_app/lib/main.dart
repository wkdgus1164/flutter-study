import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Demo",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _text = '여기에 예제 작성';
  final items = List.generate(100, (index) => index).toList();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      ),
    );
  }
}
