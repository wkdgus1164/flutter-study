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

enum Gender { man, women }

class _MyHomePageState extends State<MyHomePage> {
  Gender _gender = Gender.man;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  title: const Text("남자"),
                  leading: Radio(
                    value: Gender.man,
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value as Gender;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text("여자"),
                  leading: Radio(
                    value: Gender.women,
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value as Gender;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                RadioListTile(
                  title: const Text("남자"),
                  value: Gender.man,
                  groupValue: _gender,
                  onChanged: (value) {
                    setState(() {
                      _gender = value as Gender;
                    });
                  },
                ),
                RadioListTile(
                  title: const Text("여자"),
                  value: Gender.women,
                  groupValue: _gender,
                  onChanged: (value) {
                    setState(() {
                      _gender = value as Gender;
                    });
                  },
                )
              ],
            ),
          ),
        ));
  }
}
