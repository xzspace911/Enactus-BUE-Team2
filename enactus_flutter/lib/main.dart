import 'package:enactus_flutter/home_screen.dart';
import 'package:flutter/material.dart';
import 'cart.dart';
import 'plant_card_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeScreen() ,
      routes: {
        '/PlantCardDetails': (context) => PlantCardDetails(plantName: 'Index', plantDetails: 'Index', plantImage: 'Index'),
        '/cart': (context) => Cart(),
      },
    );
  }
}

