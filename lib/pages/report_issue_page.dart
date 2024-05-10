import 'package:flutter/material.dart';

class ReportIssuePage extends StatefulWidget {
  @override
  _ReportIssuePageState createState() => _ReportIssuePageState();
}

class _ReportIssuePageState extends State<ReportIssuePage> {
  String selectedIssueType = 'Overflowing Bins'; // Set a default non-null value
  String description = '';
  // TODO: Implement photo attachment feature

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report Issue'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField<String>(
              value: selectedIssueType,
              onChanged: (newValue) {
                if (newValue != null) {
                  setState(() {
                    selectedIssueType = newValue;
                  });
                }
              },
              items: [
                DropdownMenuItem(
                  value: 'Overflowing Bins',
                  child: Text('Overflowing Bins'),
                ),
                DropdownMenuItem(
                  value: 'Littering',
                  child: Text('Littering'),
                ),
                DropdownMenuItem(
                  value: 'Illegal Dumping',
                  child: Text('Illegal Dumping'),
                ),
                DropdownMenuItem(
                  value: 'Damaged Infrastructure',
                  child: Text('Damaged Infrastructure'),
                ),
              ],
              decoration: InputDecoration(labelText: 'Type of Issue'),
            ),
            SizedBox(height: 16),
            TextFormField(
              onChanged: (value) {
                description = value;
              },
              maxLines: 3,
              decoration: InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            // TODO: Add map widget for location selection
            // TODO: Add photo attachment feature
            ElevatedButton(
              onPressed: () {
                // TODO: Handle form submission
                // Include selectedIssueType, description, and other details in the report
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
