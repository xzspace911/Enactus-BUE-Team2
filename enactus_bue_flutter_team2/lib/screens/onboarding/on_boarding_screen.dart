import 'package:flutter/material.dart';
import 'on_boarding_page.dart';


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
                  image: 'assets/icons/mini-car.gif',
                  title: 'Choose your product',
                  subTitle:
                      'Welcome to a World of Limitless choices - Your perfect product Awaits',
                ),
              ],
            ),
            Positioned(
              right: 16,
              bottom: 25,
              child: SizedBox(
                height: 60,
                width: 100,
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pushNamed('/login'),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: Colors.blue,
                  ),
                  child: Icon(Icons.arrow_forward_ios, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}