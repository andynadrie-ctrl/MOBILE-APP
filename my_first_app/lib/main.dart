
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
          title: const Text('Fixed Overflow'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Row(
            children: [
              const Icon(
                Icons.person,
                size: 50,
              ),
              Expanded(
                child: Text(
                  'This is a very long text that previously '
                  'caused a RenderFlex overflow. Now it fits '
                  'inside the available horizontal space '
                  'because we are using Expanded.',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
