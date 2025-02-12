import "package:flutter/material.dart";
import "cars_card_details.dart";
import "cars_details_list.dart";

class CardListView extends StatelessWidget {
  CardListView({super.key});
  final List<Map<String, dynamic>> cars = CarsDetailsList().cars;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: SizedBox(
        height: 170,
        child: ListView(
          scrollDirection: Axis.horizontal,
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
              child: Card( // Added return statement
                child: Container(
                  margin: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 70,
                        width: 110,
                        child: Image.asset(car["image"]), 
                      ),
                      const SizedBox(height: 8),
                      Text(car["name"]), 
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            car["price"].toString(), 
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
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