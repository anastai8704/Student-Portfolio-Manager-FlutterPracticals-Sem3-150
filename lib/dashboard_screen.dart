import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuItems = [
      'Personal Profile',
      'Education',
      'Skills',
      'Certifications',
      'Projects',
      'Achievements',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 40,
              child: Icon(Icons.person, size: 40),
            ),
            const SizedBox(height: 10),
            const Text(
              'Anas',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1.2,
                children: List.generate(menuItems.length, (index) {
                  return Card(
                    child: Center(
                      child: Text(menuItems[index]),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
