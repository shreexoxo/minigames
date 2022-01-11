import 'package:flutter/material.dart';
import 'package:minigames/tictactoe/screens/HomeScreen.dart';
import 'package:minigames/SnakeGameFlutter/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Secondhome(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
