import 'package:demo_3d/brain_page.dart';
import 'package:demo_3d/bunny_page.dart';
import 'package:demo_3d/cube_page.dart';
import 'package:demo_3d/planet_page.dart';
import 'package:demo_3d/ruby_page.dart';
import 'package:demo_3d/sexy_page.dart';
import 'package:demo_3d/test_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        body: Builder(
          builder: (context) => Table(
            border: new TableBorder.all(width: 1.0, color: Colors.purpleAccent),
            children: [
              TableRow(children: [
                RaisedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CubePage()),
                  ),
                  child: Text("cube"),
                ),
                RaisedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BunnyPage()),
                  ),
                  child: Text("bunny"),
                ),
                RaisedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PlanetPage()),
                  ),
                  child: Text("planet"),
                ),
                RaisedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RubyPage()),
                  ),
                  child: Text("ruby"),
                ),
              ]),
              TableRow(children: [
                RaisedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SexyPage()),
                  ),
                  child: Text("sex"),
                ),
                RaisedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BrainPage()),
                  ),
                  child: Text("brain"),
                ),
                RaisedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestPage()),
                  ),
                  child: Text("Test1"),
                ),
                RaisedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestPage()),
                  ),
                  child: Text("Test2"),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
