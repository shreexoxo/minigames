import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:minigames/tictactoe/screens/HomeScreen.dart';
import 'package:minigames/SnakeGameFlutter/home_page.dart';
import 'package:minigames/tictactoe/components/homeScreen/GameOption.dart';
import 'package:minigames/tictactoe/helpers/CustomTheme.dart';
import 'package:minigames/tictactoe/helpers/particles.dart';
import 'package:minigames/tictactoe/components/homeScreen/EntryText.dart';

// importing files

class Secondhome extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<Secondhome> with CustomTheme {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: sbgColor,
              ),
            ),
          ),
          Particle(size.height, size.width),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width,
              ),
              EntryText(),
              SizedBox(
                height: 50,
              ),
              GameOption(
                title: "Snake Game",
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => home_page(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 40,
              ),
              GameOption(
                title: "Tic Tac Toe",
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
