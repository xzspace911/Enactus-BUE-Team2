import 'package:enactus_bue_flutter_team2/screens/cars_grid_items/cars_card_details.dart';
import 'package:flutter/material.dart';
import 'cars_details_list.dart';

class CarsGridItem extends StatelessWidget {
   CarsGridItem({super.key});
   final List<Map<String, dynamic>> cars = CarsDetailsList().cars;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 10,
        childAspectRatio: 0.94,
        padding: EdgeInsets.all(8),
        children: cars.map((cars) {
          return InkWell(
            onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => CarCardDetails(carName: cars["name"], carDetails: cars["details"], carImage: cars["image"]),
              ),
            );
          },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              child: SizedBox(
                child: Column(
                  children: [
                    Expanded(
                      child: Hero(
                        tag: 15,
                        child: Image.asset(
                          cars["image"],
                          height: 200,
                          width: 200,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        cars["name"],
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Coolvetica'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      height: 28,
                      width: double.infinity,
                      decoration: 
                      BoxDecoration(
                        gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.blue, Colors.purple],
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "${cars["price"]} \$",
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
    );
  }
}