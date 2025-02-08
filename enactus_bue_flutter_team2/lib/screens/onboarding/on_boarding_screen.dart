import 'package:flutter/material.dart';
import 'on_boarding_page.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 70),
        child: Stack(
          children: [
            PageView(
              children: [
                OnBoardingPage(
                  image: 'assets/icons/car.gif',
                  title: 'Choose your product',
                  subTitle:
                      'Welcome to a World of Limitless choices - Your perfect product Awaits',
                ),
              ],
            ),
            
            
          ],
        ),
        
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.purple],
          ),
        ),
        child: FloatingActionButton(
          onPressed: () => Navigator.of(context).pushNamed('/login'),
          elevation: 8,
          backgroundColor: Colors.transparent,
          child: const Icon(Iconsax.arrow_right_1,
            color: Colors.white,
          ),
          
        ),
      ),
      
    );
  }
}