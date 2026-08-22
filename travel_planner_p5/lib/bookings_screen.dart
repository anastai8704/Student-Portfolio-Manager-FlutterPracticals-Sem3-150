import 'package:flutter/material.dart';

class BookingsScreen extends StatelessWidget {
  const BookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        Text(
          'Upcoming Bookings',
          style: TextStyle(fontSize: 20),
        ),
        Card(
          child: ListTile(
            title: Text('Goa Trip'),
            subtitle: Text('20 Sep 2026'),
          ),
        ),

        SizedBox(height: 20),

        Text(
          'Completed Bookings',
          style: TextStyle(fontSize: 20),
        ),
        Card(
          child: ListTile(
            title: Text('Manali Trip'),
            subtitle: Text('Completed'),
          ),
        ),

        SizedBox(height: 20),

        Text(
          'Booking Details',
          style: TextStyle(fontSize: 20),
        ),
        Card(
          child: ListTile(
            title: Text('Goa Trip'),
            subtitle: Text('2 People | 3 Days | Confirmed'),
          ),
        ),
      ],
    );
  }
}