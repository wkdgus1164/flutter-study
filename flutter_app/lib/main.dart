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
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tab'),
            bottom: const TabBar(tabs: <Widget>[
              Tab(icon: Icon(Icons.tag_faces)),
              Tab(text: '메뉴 2'),
              Tab(icon: Icon(Icons.info), text: '메뉴 3')
            ]),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(color: Colors.yellow),
              Container(color: Colors.green),
              Container(color: Colors.blue),
            ],
          ),
        ));
  }
}
