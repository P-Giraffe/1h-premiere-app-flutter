import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Nombre de clics: $_counter'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            if (_counter > 0) Text("Continuez à cliquer"),
            if (_counter > 5 && _counter < 10) Text("OK...pas mal"),
            if (_counter >= 10 && _counter < 20)
              Text("Les choses sérieuses peuvent commencer :)"),
            if (_counter >= 20 && _counter < 35)
              Text("J'aime les panoramas. (OSS 117)"),
            if (_counter >= 35 && _counter < 60)
              Text("J'aime me battre. (OSS 117)"),
            if (_counter >= 60 && _counter < 120)
              Text("J'aime me beurrer la biscotte. (OSS 117)"),
            if (_counter >= 120 && _counter < 200)
              Text("J'aime le bruit blanc de l'eau. (OSS 117)"),
            if (_counter >= 200 && _counter < 201)
              Text("J'aime quand on m'enduit d'huile. (OSS 117)"),
            if (_counter >= 201 && _counter < 350)
              Text(
                  "J'aime quand une jolie femme brune m'apporte mon petit déjeuner au lit. (OSS 117)"),
            if (_counter >= 350)
              Text("Vous dites ça à toutes les femmes. Larmina")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
