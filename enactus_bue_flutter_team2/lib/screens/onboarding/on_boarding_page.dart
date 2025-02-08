import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key, required this.image, required this.title, required this.subTitle});
  final String image, title , subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Image(
              width: 300,
              height: 300,
              image: AssetImage(image)
          ),
          Text(title,
            style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,

          ),
          const SizedBox(height: 8),
          Text(subTitle,
            style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,

          ),
        ],
      ),
    );
  }
}