import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('User Name: Anas Tai'),
          SizedBox(height: 15),
          Text('Email: anas@gmail.com'),
          SizedBox(height: 15),
          Text('Mobile: 9356485574'),
          SizedBox(height: 15),
          Text('Preferred Destination: Goa'),
        ],
      ),
    );
  }
}