import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(text: 'Places'),
              Tab(text: 'Hotels'),
              Tab(text: 'Activities'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                ListView(
                  children: const [
                    Card(
                      child: ListTile(title: Text('Goa')),
                    ),
                    Card(
                      child: ListTile(title: Text('Manali')),
                    ),
                    Card(
                      child: ListTile(title: Text('Jaipur')),
                    ),
                    Card(
                      child: ListTile(title: Text('Kerala')),
                    ),
                  ],
                ),

                ListView(
                  children: const [
                    ListTile(
                      title: Text('Sea View Hotel'),
                      subtitle: Text(
                        'Goa\nRating: 4.5 | ₹3000/night',
                      ),
                    ),
                    ListTile(
                      title: Text('Mountain Hotel'),
                      subtitle: Text(
                        'Manali\nRating: 4.3 | ₹2500/night',
                      ),
                    ),
                  ],
                ),

                ListView(
                  children: const [
                    ListTile(title: Text('Sightseeing')),
                    ListTile(title: Text('Adventure')),
                    ListTile(title: Text('Shopping')),
                    ListTile(title: Text('Food Tours')),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}