import 'package:enactus_flutter/plant_details_list.dart';
import 'package:flutter/material.dart';
import 'plant_card_details.dart';

class PlantGridItem extends StatelessWidget {
  PlantGridItem({super.key});

  final List<Map<String, dynamic>> plants = PlantDetailsList().plants;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 10,
        childAspectRatio: 0.9,
        padding: EdgeInsets.all(8),
        children: plants.map((plant) {
          return InkWell(
            onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PlantCardDetails(plantName: plant["name"], plantDetails: plant["details"], plantImage: plant["image"]),
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
                          plant["image"],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        plant["name"],
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Kanit'),
                      ),
                    ),
                    Text(
                      "\$${plant["price"]}",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.green[700],
                          fontFamily: 'Kanit'),
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
