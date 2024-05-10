import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecosync_app/config/app_routes.dart';
import 'package:ecosync_app/config/app_strings.dart';
import 'package:ecosync_app/provider/register_provider.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

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
                  AppStrings.registerWelcome,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  AppStrings.registerToJoin,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                // First Name Field
                TextField(
                  onChanged: (value) {
                    context.read<RegisterProvider>().firstName = value;
                  },
                  decoration: InputDecoration(
                    hintText: AppStrings.firstName,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 10),
                // Last Name Field
                TextField(
                  onChanged: (value) {
                    context.read<RegisterProvider>().lastName = value;
                  },
                  decoration: InputDecoration(
                    hintText: AppStrings.lastName,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 10),
                // Ward Number Field
                TextField(
                  onChanged: (value) {
                    context.read<RegisterProvider>().wardNumber = value;
                  },
                  decoration: InputDecoration(
                    hintText: AppStrings.wardNumber,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 10),
                // Latitude Field
                TextField(
                  onChanged: (value) {
                    context.read<RegisterProvider>().latitude = value;
                  },
                  decoration: InputDecoration(
                    hintText: AppStrings.latitude,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 10),
                // Longitude Field
                TextField(
                  onChanged: (value) {
                    context.read<RegisterProvider>().longitude = value;
                  },
                  decoration: InputDecoration(
                    hintText: AppStrings.longitude,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 10),
                // Email Field
                TextField(
                  onChanged: (value) {
                    context.read<RegisterProvider>().email = value;
                  },
                  decoration: InputDecoration(
                    hintText: AppStrings.email,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 10),
                // Password Field
                TextField(
                  onChanged: (value) {
                    context.read<RegisterProvider>().password = value;
                  },
                  decoration: InputDecoration(
                    hintText: AppStrings.password,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 32),
                // Register Button
                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                            .pushReplacementNamed(AppRoutes.login);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 98, 138, 225),
                      foregroundColor: Color.fromARGB(255, 0, 0, 0),
                    ),
                    child: Text(AppStrings.register),
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(AppRoutes.login);
                      },
                      child: const Text("Login"),
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
