import 'package:enactus_bue_flutter_team2/screens/cars_grid_items/cars_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Expanded(
            child: Stack(
            children :[
              Container(
                color: const Color.fromARGB(255, 247, 247, 247),
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.purple,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(5, 5), 
                        blurRadius: 6.0,
                      ),
                    ], 
                ),
                child: Column(
                  children: [
                    SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("AutoStore",
                            style: TextStyle(
                              fontFamily: "BebasNeue",
                              fontSize: 30,
                              color: Colors.white,
                            ),
                            ),
                            Container(
                              height: 45,
                              width: 300,
                              decoration: 
                              BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white.withOpacity(0.2),
                              ),
                              child: TextField( 
                                style: TextStyle(
                                  color: Colors.purple,
                                  
                                ),
                                decoration: InputDecoration(
                                  hintText: "Search",
                                  hintStyle: TextStyle(
                                    color: Colors.purple,
                                  ),
                                  
                                  suffixIcon: Icon(Iconsax.search_favorite),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                                
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Positioned(
                bottom: 450.0,
                top: 100.0,
                left: 80,
                width: 340,
                child: Container(
                          height: 100,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image(image: AssetImage("assets/images/1.png"))
                            ],
                          ),
                        ),
              ),
            
            ] 
            ),
          ),
        ],
      ),
        
      );
    
  }
}