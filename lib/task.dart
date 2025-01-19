// sub_page.dart
import 'package:flutter/material.dart';

class SubPage extends StatelessWidget {
  const SubPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Welcome to the Sub Page!'),
        ]),
      ),
    );
  }
}
