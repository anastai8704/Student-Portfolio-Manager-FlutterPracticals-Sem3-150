import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  final List<String> menu = [
    "Profile",
    "Education",
    "Skills",
    "Certificates",
    "Projects",
    "Achievements",
  ];

  final List<String> activity = [
    "Added Flutter Certification",
    "Updated Profile",
    "Added New Project",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const CircleAvatar(
              radius: 35,
              child: Icon(Icons.person, size: 35),
            ),

            const SizedBox(height: 10),

            const Center(
              child: Text(
                "Anas",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: menu.map((e) {
                return Card(
                  child: Center(
                    child: Text(e),
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 20),

            const Text(
              "Portfolio Summary",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Card(
              child: ListTile(
                title: Text("Total Skills"),
                trailing: Text("5"),
              ),
            ),

            Card(
              child: ListTile(
                title: Text("Total Projects"),
                trailing: Text("3"),
              ),
            ),

            Card(
              child: ListTile(
                title: Text("Total Certifications"),
                trailing: Text("2"),
              ),
            ),

            Card(
              child: ListTile(
                title: Text("Total Achievements"),
                trailing: Text("4"),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Recent Activities",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            ListView.builder(
              itemCount: activity.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.check_circle),
                  title: Text(activity[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}