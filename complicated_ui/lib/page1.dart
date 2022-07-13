import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '홈 페이지',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
