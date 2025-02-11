import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color.fromARGB(255, 247, 247, 247),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.purple,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              
            ),
            height: 120,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top : 45 , left: 10 , right: 10),
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
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Stack(
            children: [
              Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                   
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Introducing",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          Text(
                            "Sedan",
                            style: TextStyle(
                              fontFamily: "Coolvetica",
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 30,
                            width: 90,
                            padding: EdgeInsets.only(
                                top: 4, bottom: 4, left: 17, right: 4),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 11),
                              child: Text(
                                "View",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 150,
                top: 1,
                child: SizedBox(
                  height: 200,
                        child: Image(
                          image: AssetImage(
                            "assets/images/6.png",
                          ),
                          height: 300,
                          width: 300,
                        ),
                      ),
              ),
              
            ], 
          ),
          SizedBox(height: 10,),
        Stack(
          children: [
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                 
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Introducing",
                          style:
                              TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        Text(
                          "Sedan",
                          style: TextStyle(
                            fontFamily: "Coolvetica",
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 30,
                          width: 90,
                          padding: EdgeInsets.only(
                              top: 4, bottom: 4, left: 17, right: 4),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 11),
                            child: Text(
                              "View",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              right: 150,
              top: 1,
              child: SizedBox(
                height: 200,
                      child: Image(
                        image: AssetImage(
                          "assets/images/6.png",
                        ),
                        height: 300,
                        width: 300,
                      ),
                    ),
            ),
            
          ],
          
        ),  
        ],
        
      ),
    );
  }
}

