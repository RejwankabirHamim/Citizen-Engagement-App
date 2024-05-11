import 'package:ecosync_app/pages/main_page.dart';
import 'package:flutter/material.dart';

class VolunteeringPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Volunteering'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Why Volunteer?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'At Clean Dhaka, we believe that collective efforts can make a significant impact on our environment. By volunteering, you become an essential part of our mission to create a cleaner, greener city.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),

            Text(
              'How to Get Involved',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              '1. Join Our Clean-Up Drives: Participate in regular clean-up drives across different neighborhoods in Dhaka. We provide gloves, bags, and guidance. Together, we can remove litter from streets, parks, and water bodies.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              '2. Spread Awareness: Be an advocate for waste reduction and proper disposal. Educate your friends, family, and neighbors about the importance of recycling, composting, and responsible waste management.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            // Add more steps here

            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainPage()),
                );
              },
              child: Text('I am interested'),
            ),
          ],
        ),
      ),
    );
  }
}
