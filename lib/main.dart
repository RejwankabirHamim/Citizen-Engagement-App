import 'package:flutter/material.dart';
import 'package:ecosync_app/config/app_routes.dart';
import 'package:ecosync_app/provider/app_repo.dart';
import 'package:ecosync_app/provider/post_provider.dart';
import 'package:ecosync_app/provider/user_provider.dart';
import 'package:ecosync_app/styles/app_colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<AppRepo>(
        create: (context) => AppRepo(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 4, 135, 241), // Set your desired button color here
            // Other button styles (text color, padding, etc.) can be customized as well
          ),
        ),
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: Color.fromARGB(142, 23, 0, 97),
        brightness: Brightness.dark,
      ),
      initialRoute: AppRoutes.login,
      routes: AppRoutes.pages,
    );
  }
}
