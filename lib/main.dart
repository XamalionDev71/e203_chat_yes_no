import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Si-No App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
        ),
        body: FilledButton(
            onPressed: (){}, 
            child: Text('Click Me')
        ),
      ),
    );
  }
}
