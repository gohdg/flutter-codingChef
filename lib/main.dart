import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                'Hello Word',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.teal,
              duration: Duration(milliseconds: 1000),
            ));
          },
          child: Text(
            'show me',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
          )),
    );
  }
}
