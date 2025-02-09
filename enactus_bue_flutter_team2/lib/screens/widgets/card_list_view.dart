import "package:flutter/material.dart";
class CardListView extends StatelessWidget {
  const CardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: SizedBox(
                        height: 170,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            _cardListView("assets/images/1.png",
                                "Toyota Corolla", "22000 \$"),
                            SizedBox(width: 10),
                            _cardListView("assets/images/2.png",
                                "Merecedes CLS", "85000 \$"),
                            SizedBox(width: 10),
                            _cardListView("assets/images/3.png",
                                "Hyundai Tucsan", "54000 \$"),
                            SizedBox(width: 10),
                            _cardListView("assets/images/4.png", "Toyota Hilex",
                                "74000 \$"),
                            SizedBox(width: 10),
                            _cardListView(
                                "assets/images/5.png", "Camaro", "88000 \$"),
                            SizedBox(width: 10),
                            _cardListView("assets/images/6.png",
                                "Toyota Corolla", "36000 \$"),
                            SizedBox(width: 10),
                            _cardListView("assets/images/7.png",
                                "Mercedes A200", "86000 \$"),
                            SizedBox(width: 10),
                            _cardListView(
                                "assets/images/8.png", "BMW M2", "80000 \$"),
                          ],
                        ),
                      ),
                    );
  }
}

Widget _cardListView(String image, String name, String price) {
  return Card(
      child: Container(
    margin: EdgeInsets.all(15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 70,
          width: 110,
          child: Image.asset(image),
        ),
        SizedBox(height: 8),
        Text(name),
        SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              price,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    ),
  ));
}
