import 'package:enactus_bue_flutter_team2/features/authentication/screens/login/forget_password.dart';
import 'package:enactus_bue_flutter_team2/features/authentication/screens/login/login.dart';
import 'package:enactus_bue_flutter_team2/features/authentication/screens/login/reset_password.dart';
import 'package:enactus_bue_flutter_team2/features/authentication/screens/signup/sign_up.dart';
import 'package:enactus_bue_flutter_team2/screens/cars_grid_items/cars_grid_item.dart';
import 'package:enactus_bue_flutter_team2/screens/cart/cart_page.dart';
import 'package:enactus_bue_flutter_team2/screens/home/home_screen.dart';
import 'package:enactus_bue_flutter_team2/screens/onboarding/on_boarding_screen.dart';
import 'package:enactus_bue_flutter_team2/screens/profile_pages/profile_page.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:OnBoardingScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/sign_up' : (context)=> SignupScreen(),
        '/forget_password' : (context)=> ForgetPassword(),
        '/home_screen' : (context)=> HomeScreen(),
        '/reset_password' : (context)=> ResetPassword(),
        '/cart_page' : (context)=> CartPage(),
        '/profile_page' : (context)=> ProfilePage(),
        '/on_boarding_screen' : (context)=> OnBoardingScreen(),
        '/cars_grid_item' : (context)=> CarsGridItem(),
      },
      
    );
  }
}
