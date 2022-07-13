import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[_buildTop(), _buildMiddle(), _buildBottom()],
    );
  }

  Widget _buildTop() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  print('클릭');
                },
                child: Column(
                  children: const <Widget>[
                    Icon(Icons.local_taxi, size: 40),
                    Text("택시")
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('클릭');
                },
                child: Column(
                  children: const <Widget>[
                    Icon(Icons.local_taxi, size: 40),
                    Text("블랙")
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('클릭');
                },
                child: Column(
                  children: const <Widget>[
                    Icon(Icons.local_taxi, size: 40),
                    Text("바이크")
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('클릭');
                },
                child: Column(
                  children: const <Widget>[
                    Icon(Icons.local_taxi, size: 40),
                    Text("대리")
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  print('클릭');
                },
                child: Column(
                  children: const <Widget>[
                    Icon(Icons.local_taxi, size: 40),
                    Text("택시")
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('클릭');
                },
                child: Column(
                  children: const <Widget>[
                    Icon(Icons.local_taxi, size: 40),
                    Text("블랙")
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('클릭');
                },
                child: Column(
                  children: const <Widget>[
                    Icon(Icons.local_taxi, size: 40),
                    Text("바이크")
                  ],
                ),
              ),
              Opacity(
                opacity: 0,
                child: GestureDetector(
                  onTap: () {
                    print('클릭');
                  },
                  child: Column(
                    children: const <Widget>[
                      Icon(Icons.local_taxi, size: 40),
                      Text("대리")
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildMiddle() {
    return const Text('Middle');
  }

  Widget _buildBottom() {
    return const Text('Bottom');
  }
}
