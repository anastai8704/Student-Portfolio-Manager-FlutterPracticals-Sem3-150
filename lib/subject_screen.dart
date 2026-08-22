import 'package:flutter/material.dart';

class SubjectScreen extends StatelessWidget {
  final String name;
  final String enrollment;

  const SubjectScreen({
    super.key,
    required this.name,
    required this.enrollment,
  });

  @override
  Widget build(BuildContext context) {
    final subjects = [
      "Flutter",
      "Data Analytics",
      "Cloud Computing",
      "Cyber Security",
      "Artificial Intelligence",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Subject"),
      ),
      body: Column(
        children: [
          Text("Student: $name"),
          Text("Enrollment No.: $enrollment"),

          Expanded(
            child: ListView.builder(
              itemCount: subjects.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(subjects[index]),
                  onTap: () {
                    Navigator.pop(context, subjects[index]);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}