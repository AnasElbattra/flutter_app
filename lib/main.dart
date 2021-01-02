import 'package:flutter/material.dart';
import './widget/user_Transaction.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
//String inputTiltle;
//String amount;
  final title = TextEditingController();
  final amount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Card(
            color: Colors.deepPurpleAccent,
            child: Container(
              width: double.infinity,
              child: Text('Chart!'),
            ),
            elevation: 10,
          ),
           UserTransaction()
        ],
      ),
    );
  }
}
