import 'package:ecosync_app/pages/create_post_page.dart';
import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Public Forum'),
      ),
      body: ListView(
        children: <Widget>[
          PostCard(),
          // Add more PostCard widgets...
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreatePostPage()),
          );
        },
        child: Icon(Icons.create),
        tooltip: 'Create Post',
      ),
    );
  }
}

class PostCard extends StatefulWidget {
  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    'Username',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  '2h ago',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            subtitle: Text(
              'A long post content that goes here... A long post content that goes here...A long post content that goes here...A long post content that goes here...A long post content that goes here...A long post content that goes here...A long post content that goes here...A long post content that goes here...A long post content that goes here...A long post content that goes here...A long post content that goes here...A long post content that goes here...A long post content that goes here...A long post content that goes here...A long post content that goes here...A long post content that goes here...A long post content that goes here...',
              maxLines: isExpanded ? 100 : 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.thumb_up_alt_outlined),
                onPressed: () {},
              ),
              Text('123'),
              IconButton(
                icon: Icon(Icons.thumb_down_alt_outlined),
                onPressed: () {},
              ),
              Text('4'),
              IconButton(
                icon: Icon(Icons.comment),
                onPressed: () {},
              ),
              Text('16 Comments'),
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
              child: Text(isExpanded ? 'See Less' : 'See More'),
            ),
          ),
        ],
      ),
    );
  }
}



