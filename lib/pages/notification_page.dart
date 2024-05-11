import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView(
        children: [
          NotificationCard(
            title: 'New Message',
            content: 'You have a new message from John Doe.',
            timestamp: '2h ago',
          ),
          NotificationCard(
            title: 'Event Reminder',
            content: 'Don\'t forget the team meeting at 3 PM.',
            timestamp: '1d ago',
          ),
          // Add more NotificationCard widgets...
        ],
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String title;
  final String content;
  final String timestamp;

  const NotificationCard({
    required this.title,
    required this.content,
    required this.timestamp,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.notifications),
        title: Text(title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(content),
            SizedBox(height: 4),
            Text(
              timestamp,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
