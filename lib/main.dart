import 'package:flutter/material.dart';
import 'package:travel_2/pages/news_app.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'NewsToday',
      debugShowCheckedModeBanner: false,
      home: new NewsApp(),
    );
  }
}
