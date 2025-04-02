import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean_code/config/routes/routes_name.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, RoutesName.homeScreen);
        },
        child: Center(child: Text("Login Screen")),
      ),
    );
  }
}
