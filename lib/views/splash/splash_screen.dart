import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean_code/config/routes/routes_name.dart';
import 'package:flutter_bloc_clean_code/views/home/home_screen.dart';
import 'package:flutter_bloc_clean_code/views/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(
        onPressed: () {
          // TODO:p => Conventional way check loginScreen for 'Route' way
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        child: Center(child: Text("Splash Screen")),
      ),
    );
  }
}
