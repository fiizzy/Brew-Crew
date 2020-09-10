import 'package:flutter/material.dart';
import 'brewList.dart';
import 'brewListSettings.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("The App Brew"),

        
      ),
      body: Column(
        children: <Widget>[
          BrewList(),
          BrewListSettings()
        ],
      ),
    );
  }
}