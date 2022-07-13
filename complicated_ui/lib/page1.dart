import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final dummyItems = [
  'https://via.placeholder.com/600x400',
  'https://via.placeholder.com/600x400',
  'https://via.placeholder.com/600x400',
];

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
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
    return CarouselSlider(
      options: CarouselOptions(height: 400, autoPlay: true),
      items: dummyItems.map((url) {
        return Builder(builder: (BuildContext context) {
          return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: const BoxDecoration(color: Colors.amber),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(url, fit: BoxFit.cover),
              ));
        });
      }).toList(),
    );
  }

  Widget _buildBottom() {
    final items = List.generate(10, (index) {
      return const ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text("[이벤트] 이것은 공지사항입니다."),
      );
    });

    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }
}
