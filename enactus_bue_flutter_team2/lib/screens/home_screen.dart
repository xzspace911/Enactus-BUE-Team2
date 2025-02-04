import 'package:enactus_bue_flutter_team2/screens/cars_grid_items/cars_grid_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Shop'),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: 'PlayFair',
          fontWeight: FontWeight.w500,
          
        ),
      
      ),
      body: CarsGridItem(),
    );
  }
}