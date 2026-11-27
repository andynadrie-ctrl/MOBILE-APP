
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Overflow Example'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            children: [
              const Icon(
                Icons.person,
                size: 50,
              ),
              const Text(
                'This is a very long text that will '
                'cause a RenderFlex overflow because '
                'there is not enough horizontal space '
                'to display all this text inside the Row.',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
