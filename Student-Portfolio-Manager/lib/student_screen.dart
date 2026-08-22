import 'package:flutter/material.dart';
import 'subject_screen.dart';
import 'course_details_screen.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  String selectedSubject = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Student: Anas Tai"),
            const SizedBox(height: 10),
            const Text("Enrollment No.: 202504104610150"),
            const SizedBox(height: 10),
            const Text("Course: MCA"),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () async {
                String? subject = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SubjectScreen(
                      name: "Anas Tai",
                      enrollment: "202504104610150",
                    ),
                  ),
                );

                if (subject != null) {
                  setState(() {
                    selectedSubject = subject;
                  });
                }
              },
              child: const Text("Select Subject"),
            ),

            const SizedBox(height: 20),

            Text("Selected Subject: $selectedSubject"),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: selectedSubject.isEmpty
                  ? null
                  : () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CourseDetailsScreen(
                            course: selectedSubject,
                          ),
                        ),
                      );
                    },
              child: const Text("View Course Details"),
            ),
          ],
        ),
      ),
    );
  }
}