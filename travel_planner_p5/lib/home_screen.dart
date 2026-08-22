import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Travel Planner',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Welcome! Plan your next trip.',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 25),

        const Text(
          'Featured Destinations',
          style: TextStyle(fontSize: 20),
        ),

        Card(
          child: ListTile(
            leading: const Icon(Icons.beach_access),
            title: const Text('Goa'),
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.landscape),
            title: const Text('Manali'),
          ),
        ),

        const SizedBox(height: 20),

        const Text(
          'Popular Travel Packages',
          style: TextStyle(fontSize: 20),
        ),

        Card(
          child: ListTile(
            title: const Text('Goa Package'),
            subtitle: const Text('3 Days / 2 Nights'),
          ),
        ),
        Card(
          child: ListTile(
            title: const Text('Manali Package'),
            subtitle: const Text('5 Days / 4 Nights'),
          ),
        ),
      ],
    );
  }
}