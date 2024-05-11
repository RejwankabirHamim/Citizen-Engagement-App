import 'package:flutter/material.dart';

class EducationalContentCreatePage extends StatefulWidget {
  @override
  _EducationalContentCreatePageState createState() =>
      _EducationalContentCreatePageState();
}

class _EducationalContentCreatePageState
    extends State<EducationalContentCreatePage> {
  String selectedTitle = 'Educational Content'; // Default title

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Educational Content and Events Notification'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              value: selectedTitle,
              onChanged: (newValue) {
                if (newValue != null) {
                  setState(() {
                    selectedTitle = newValue;
                  });
                }
              },
              items: [
                DropdownMenuItem(
                  value: 'Educational Content',
                  child: Text('Educational Content'),
                ),
                DropdownMenuItem(
                  value: 'Event Notification',
                  child: Text('Event Notification'),
                ),
              ],
              decoration: InputDecoration(labelText: 'Select Title'),
            ),
            SizedBox(height: 16),
            TextField(
              maxLines: null, // Allows for multi-line input
              decoration: InputDecoration(
                hintText: 'Write your content here...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle form submission (e.g., save content to database)
                // For now, we'll just navigate back to the previous screen
                Navigator.pop(context);
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: EducationalContentCreatePage(),
  ));
}
