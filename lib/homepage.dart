import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var a = 0, b = 0, ans = 0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void add() {
    setState(() {
      a = int.parse(t1.text);
      b = int.parse(t2.text);
      ans = a + b;
    });
  }

  void sub() {
    setState(() {
      a = int.parse(t1.text);
      b = int.parse(t2.text);
      ans = a - b;
    });
  }

  void multiply() {
    a = int.parse(t1.text);
    b = int.parse(t2.text);
    setState(() {
      ans = a * b;
    });
  }

  void divide() {
    setState(() {
      a = int.parse(t1.text);
      b = int.parse(t2.text);
      ans = a ~/ b;
    });
  }
  void clear()
  {
    setState(() {
          t1.text="0";
          t2.text="0";
          ans=0;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Calculator'),
      ),
      body: new Container(
        padding: EdgeInsets.all(70.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Output:$ans",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            new TextFormField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: '1st no'),
              controller: t1,
            ),
            new TextFormField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: '2nd no'),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 10.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new RaisedButton(
                  child: new Text("+"),
                  color: Colors.greenAccent,
                  onPressed: add,
                ),
                new Padding(
                  padding: const EdgeInsets.all(20.0),
                ),
                new RaisedButton(
                  child: new Text("-"),
                  color: Colors.greenAccent,
                  onPressed: sub,
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new RaisedButton(
                  child: new Text("*"),
                  color: Colors.greenAccent,
                  onPressed: multiply,
                ),
                new Padding(
                  padding: const EdgeInsets.all(20.0),
                ),
                new RaisedButton(
                  child: new Text("/"),
                  color: Colors.greenAccent,
                  onPressed: divide,
                ),
              ],
            ),

             new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("clear"),
                  color: Colors.greenAccent,
                  onPressed: clear,
                ),
               
              ],
            ),
          ],
        ),
      ),
    );
  }
}
