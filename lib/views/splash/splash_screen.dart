import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean_code/config/components/internet_exception_widget.dart';
import 'package:flutter_bloc_clean_code/config/components/loading_widget.dart';
import 'package:flutter_bloc_clean_code/config/components/round_button.dart';
import 'package:flutter_bloc_clean_code/config/routes/routes_name.dart';
import 'package:flutter_bloc_clean_code/data/exceptions/app_exceptions.dart';
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
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              InternetExceptionWidget(onPressRetry: () {
                throw NoInternetException("no intttttttt");
              }),
              SizedBox(height: 30),
              LoadingWidget(),
              RoundButton(
                title: "Login",
                onPress: () {
                  Navigator.pushNamed(context, RoutesName.homeScreen);
                },
              ),
              RoundButton(
                title: "Sign Up",
                onPress: () {
                  Navigator.pushNamed(context, RoutesName.loginScreen);
                },
              ),
              TextButton(
                onPressed: () {
                  // TODO:p => Conventional way check loginScreen for 'Route' way
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text("Splash Screen"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
