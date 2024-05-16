import 'package:ecosync_app/config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:ecosync_app/data/model/user.dart';
import 'package:ecosync_app/pages/register_page.dart';
import 'package:ecosync_app/config/app_icons.dart';
import 'package:ecosync_app/config/app_routes.dart';
import 'package:ecosync_app/config/app_strings.dart';
import 'package:ecosync_app/provider/app_repo.dart';
import 'package:ecosync_app/provider/login_provider.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // Add controller to capture email and password input
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
                Text(
                  AppStrings.helloWelcome,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  AppStrings.loginToContinue,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: AppStrings.email,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    hintText: AppStrings.password,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      print('Forgot is clicked');
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    child: Text(AppStrings.forgotPassword),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      // Use controllers to get the email and password
                      String email = _emailController.text;
                      String password = _passwordController.text;

                      // Construct the request payload
                      var payload = json.encode({
                        'email': email,
                        'password': password,
                      });
                      // Navigator.of(context)
                      //         .pushReplacementNamed(AppRoutes.main);
                      try {
                        // Post email and password to the server
                        var response = await http.post(
                          Uri.parse(
                              '${AppConfig.baseUrl}/login'), // Replace with your endpoint
                          headers: {'Content-Type': 'application/json'},
                          body: payload,
                        );
                        //print(response.statusCode);

                        if (response.statusCode == 200) {
                          // Parse the response body
                          var data = json.decode(response.body);

                          // Update the AppRepo with user details and token

                          // Navigate to the main page
                          Navigator.of(context)
                              .pushReplacementNamed(AppRoutes.main);
                        } else {
                          // Show invalid email and password
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text('Invalid email or password')),
                          );
                        }
                      } catch (error) {
                        // Handle other errors, possibly showing a dialog or a Snackbar
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Login Failed: $error')),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 98, 138, 225),
                      foregroundColor: Color.fromARGB(255, 0, 0, 0),
                    ),
                    child: Text(AppStrings.login),
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(AppRoutes.register);
                      },
                      child: const Text("Signup"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
