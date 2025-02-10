import 'package:enactus_bue_flutter_team2/screens/cars_grid_items/cars_card_details.dart';
import 'package:flutter/material.dart';
import 'cars_details_list.dart';
import 'package:iconsax/iconsax.dart';

class CarsGridItem extends StatelessWidget {
   CarsGridItem({super.key});
   final List<Map<String, dynamic>> cars = CarsDetailsList().cars;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("View All",
        style: TextStyle(
          fontFamily: "BebasNeue",
          fontSize: 28,
        ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Iconsax.arrow_left_2),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.count(
          crossAxisCount: 2, 
          crossAxisSpacing: 8, 
          mainAxisSpacing: 12,
          childAspectRatio: 0.8, 
          padding: EdgeInsets.all(8),
          children: cars.map((car) { 
            return InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CarCardDetails(
                      carName: car["name"], 
                      carDetails: car["details"], 
                      carImage: car["image"]
                    ),
                  ),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 5,
                child: SizedBox(
                  height: 250, 
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          height: 150 ,
                          width: 150 ,
                          car["image"],
                           
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          car["name"],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Coolvetica'
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        height: 28,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.blue, Colors.purple],
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "${car["price"]} \$",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10), 
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
