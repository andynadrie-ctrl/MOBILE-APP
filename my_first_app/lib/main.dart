
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, dynamic>> items = const [
    {
      'name': 'Laptop',
      'description': 'A computer for work and study',
      'icon': Icons.laptop,
    },
    {
      'name': 'Smartphone',
      'description': 'A device for communication',
      'icon': Icons.phone_android,
    },
    {
      'name': 'Headphones',
      'description': 'Listen to music and audio',
      'icon': Icons.headphones,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Items'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(
                items[index]['icon'],
                size: 35,
              ),
              title: Text(items[index]['name']),
              subtitle: Text(
                items[index]['description'],
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          );
        },
      ),
    );
  }
}
