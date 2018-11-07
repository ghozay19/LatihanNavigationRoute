import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Latihan Navigation",
    home: Home(),
    routes: <String, WidgetBuilder>{
      '/Home': (BuildContext context) => new Home(),
      '/PageDua': (BuildContext context) => new PageDua()
    },
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.home),
        title: Center(child: new Text("Apps")),
      ),
      body: Center(
        child: new Container(
          child: new IconButton(
            icon: new Icon(Icons.headset, size: 50.0),
            onPressed: () {
              Navigator.pushNamed(context, '/PageDua');
            },
          ),
        ),
      ),
    );
  }
}

class PageDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Page Dua"),
      ),
      body: Center(
        child: new Container(
          child: new IconButton(
            icon: new Icon(Icons.smartphone, size: 50.0),
            onPressed: (){
              Navigator.pushNamed(context, '/Home()');
            },
          ),
        ),
      ),
    );
  }
}
