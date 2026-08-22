import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatelessWidget {
  final String course;

  const CourseDetailsScreen({
    super.key,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Course Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Course Name: $course"),
            const SizedBox(height: 10),
            const Text("Duration: 6 Months"),
            const SizedBox(height: 10),
            const Text("Instructor: Akisha Patel"),
            const SizedBox(height: 10),
            const Text(
              "Course Description: Learn concepts and practical "
              "skills related to the selected course.",
            ),
          ],
        ),
      ),
    );
  }
}