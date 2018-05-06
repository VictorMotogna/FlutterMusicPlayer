import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Music player',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Player'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(''),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: new IconButton(
          icon: new Icon(
            Icons.arrow_back_ios
          ),
          color: const Color(0xFFDDDDDD),
          onPressed: () {},
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(
              Icons.menu
            ),
            color: const Color(0xFFDDDDDD),
            onPressed: () {},
          ),
        ],
      ),
      body: new Column(
        children: <Widget>[
          // seek bar

          // visualizer
          new Container(
            width: double.infinity,
            height: 125.0,
          ),

          // song title, artist name, controls
          new Container(
            color: Colors.black,
            child: new Column(
              children: <Widget>[
                new RichText(
                  text: new TextSpan(
                    text: '',
                    children: [
                      new TextSpan(
                        text: 'Song Title\n',
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 5.0,
                          height: 1.5,
                        ),
                      ),
                      new TextSpan(
                        text: 'Artist name',
                        style: new TextStyle(
                          color: Colors.white.withOpacity(0.75),
                          fontSize: 12.0,
                          letterSpacing: 3.0,
                          height: 1.5
                        ),
                      ),
                    ]
                  ),
                ),
                new Row(
                  children: <Widget>[

                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
