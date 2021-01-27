import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  @override
  createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  final _textStyle = new TextStyle(fontSize: 25);

  int _clickCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Numero de Clicks",
              style: _textStyle,
            ),
            Text(
              "$_clickCount",
              style: _textStyle,
            ),
          ],
        ),
      ),
      floatingActionButton: buildFloatingActionButton(),
    );
  }

  Widget buildFloatingActionButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reset,
        ),
        Expanded(
          child: SizedBox(
            width: 5.0,
          ),
        ),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _remove,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _add,
        )
      ],
    );
  }

  void _add() {
    setState(() {
      _clickCount++;
    });
  }

  void _remove() {
    setState(() {
      _clickCount--;
      if (_clickCount < 0) {
        _reset();
      }
    });
  }

  void _reset() {
    setState(() {
      _clickCount = 0;
    });
  }
}
