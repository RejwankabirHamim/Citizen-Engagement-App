import 'package:ecosync_app/data/model/user.dart';
import 'package:ecosync_app/provider/register_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0), // Adjust padding as needed
          child: Column(
            children: [
              // Welcome message
              Text(
                'Welcome to Ecosync',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Create a new account',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),

              // Username field
              TextField(
                onChanged: (value) =>
                    context.read<RegisterProvider>().username = value,
                decoration: InputDecoration(
                  hintText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                ),
              ),
              SizedBox(height: 16),

              // Email field
              TextField(
                onChanged: (value) =>
                    context.read<RegisterProvider>().email = value,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                ),
              ),
              SizedBox(height: 16),

              // Password field
              TextField(
                onChanged: (value) =>
                    context.read<RegisterProvider>().password = value,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                ),
              ),
              SizedBox(height: 32),

              // Register button
              SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    // Attempt to register
                    final user = await context.read<RegisterProvider>().register();
                    // Handle successful registration (e.g., navigate to main screen)
                    if (user != null) {
                      // Show success message or navigate
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Registration Successful')));
                      // Potentially navigate to the main screen
                    } else {
                      // Handle registration failure (show error message)
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Registration Failed')));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 98, 138, 225),
                    foregroundColor: Color.fromARGB(255, 0, 0, 0),
                  ),
                  child: Text('Register'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
