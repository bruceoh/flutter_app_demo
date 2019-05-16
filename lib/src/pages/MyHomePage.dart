import 'package:flutter/material.dart';
import '../blocs/CounterBloc.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CounterBloc _counterBloc = new CounterBloc(initialCount: 0);

  @override
  void dispose() {
    _counterBloc.dispose();
    super.dispose();
  }

  _buttonPressed() {}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('You have pushed the button this many times:'),
            new StreamBuilder(
                stream: _counterBloc.counterObservable,
                builder: (context, AsyncSnapshot<int> snapshot) {
                  return new Text('${snapshot.data}',
                      style: Theme.of(context).textTheme.display1);
                }),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: _buttonPressed(), //addNumbers,,
                  child: new Text("Add"),
                ),
                new RaisedButton(
                  onPressed: _buttonPressed(),
                  textColor: Colors.white,
                  color: Colors.red,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "Subtract",
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: new Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            new Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: new FloatingActionButton(
                  onPressed: _counterBloc.increment,
                  tooltip: 'Increment',
                  child: new Icon(Icons.add),
                )),
            new FloatingActionButton(
              onPressed: _counterBloc.decrement,
              tooltip: 'Decrement',
              child: new Icon(Icons.remove),
            ),
          ]),
    );
  }
}
