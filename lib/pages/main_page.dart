import 'package:ecosync_app/config/app_routes.dart';
import 'package:ecosync_app/pages/report_issue_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ecosync'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                              .pushReplacementNamed(AppRoutes.login);
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Ecosync',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                'Welcome!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Report Issue'),
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ReportIssuePage()),
                );
              },
            ),
            ListTile(
              title: Text('Community'),
              onTap: () {
                // Handle community navigation
              },
            ),
            ListTile(
              title: Text('Sharing'),
              onTap: () {
                // Handle sharing navigation
              },
            ),
            ListTile(
              title: Text('Volunteering'),
              onTap: () {
                // Handle volunteering navigation
              },
            ),
          ],
        ),
      ),
    );
  }
}
