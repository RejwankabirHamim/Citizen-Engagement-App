import 'package:ecosync_app/pages/educational_content_create_page%20.dart';
import 'package:flutter/material.dart';

class ContentAndEventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contents and Events'),
      ),
      body: ListView(
        children: <Widget>[
          ContentAndEventCard(),
          // Add more ContentAndEventCard widgets...
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EducationalContentCreatePage()),
          );
        },
        child: Icon(Icons.create),
        tooltip: 'Create Content/Event',
      ),
    );
  }
}

class ContentAndEventCard extends StatefulWidget {
  @override
  _ContentAndEventCardState createState() => _ContentAndEventCardState();
}

class _ContentAndEventCardState extends State<ContentAndEventCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title:Text('Educational Content'),
            subtitle: Text(
              'A long content or event description that goes here... A long content or event description that goes here...A long content or event description that goes here...A long content or event description that goes here...',
              maxLines: isExpanded ? 100 : 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_upward),
                onPressed: () {
                  // Handle upvote action
                },
              ),
              Text('3'), // Replace with the actual upvote count
              IconButton(
                icon: Icon(Icons.arrow_downward),
                onPressed: () {
                  // Handle downvote action
                },
              ),
 // Replace with the actual downvote count
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: Text(isExpanded ? 'Show Less' : 'Show More'),
            ),
          ),
          ListTile(
            title:Text('Event Notification'),
            subtitle: Text(
              'We have a event in Mohakhali next day, where our honourable Mayor will join with us',
              maxLines: isExpanded ? 100 : 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_upward),
                onPressed: () {
                  // Handle upvote action
                },
              ),
              Text('5'), // Replace with the actual upvote count
              IconButton(
                icon: Icon(Icons.arrow_downward),
                onPressed: () {
                  // Handle downvote action
                },
              ),
 // Replace with the actual downvote count
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: Text(isExpanded ? 'Show Less' : 'Show More'),
            ),
          ),
        ],
      ),
    );
  }
}

