import 'package:flutter/material.dart';
import 'package:bruce_app_demo/src/temp/you_awesome/index.dart';

class YouAwesomePage extends StatelessWidget {
  static const String routeName = "/youAwesome";

  @override
  Widget build(BuildContext context) {
    var _youAwesomeBloc = new YouAwesomeBloc();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("YouAwesome"),
      ),
      body: new YouAwesomeScreen(youAwesomeBloc: _youAwesomeBloc),
    );
  }
}
