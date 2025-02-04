import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,


      title:
      
       Text(
        "Welcome to our electronic store",
        style:
         GoogleFonts.getFont('Bebas Neue',color: Colors.white , fontSize: 28),
        ),



        actions: [
          IconButton(
            color: Colors.white,
            iconSize: 30,
            padding: EdgeInsets.only(right: 10),
            icon: Icon(Icons.menu),
            onPressed: () {},
             
            
            ),
        ],



        
    );
  }
}