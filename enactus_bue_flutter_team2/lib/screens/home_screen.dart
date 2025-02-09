import 'package:enactus_bue_flutter_team2/screens/cars_grid_items/cars_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'cars_grid_items/cars_details_list.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<Map<String, dynamic>> cars = CarsDetailsList().cars;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
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
                          padding: const EdgeInsets.only(
                              top: 40, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "AutoStore",
                                style: TextStyle(
                                  fontFamily: "BebasNeue",
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                height: 45,
                                width: 210,
                                decoration: BoxDecoration(
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
                Padding(
                  padding: const EdgeInsets.only(top: 120, left: 40, right: 40),
                  child: Container(
                    height: 150,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image(
                          image: AssetImage(
                            "assets/images/6.png",
                          ),
                          height: 150,
                          width: 150,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Introducing",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              "Toyota Corolla",
                              style: TextStyle(
                                fontFamily: "Coolvetica",
                                fontSize: 14,
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
                              child: Text(
                                "Buy Now",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 300, bottom: 40, left: 30, right: 30),
                      child: SizedBox(
                        height: 90,
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: const Color.fromARGB(
                                          255, 247, 215, 244),
                                    ),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Iconsax.category))),
                                SizedBox(
                                  height: 4,
                                ),
                                Text("Category")
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.purple[100],
                                    ),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Iconsax.copy))),
                                SizedBox(
                                  height: 4,
                                ),
                                Text("Compare")
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.purple[200],
                                    ),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Iconsax.flash))),
                                SizedBox(
                                  height: 4,
                                ),
                                Text("Sales event")
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.purple[300],
                                    ),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Iconsax.discount_shape))),
                                SizedBox(
                                  height: 4,
                                ),
                                Text("Offers")
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text(
                            "New Arrivals",
                            style: TextStyle(
                              fontFamily: "BebasNeue",
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(width: 130),
                          ElevatedButton(
                            onPressed: () => Navigator.of(context)
                                .pushNamed('/cars_grid_item'),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.purple[300],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                )),
                            child: Text(
                              "View all",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Padding(
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
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [const Color.fromARGB(255, 132, 7, 241), Colors.purple],
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () => Navigator.of(context).pushNamed('/login'),
          backgroundColor: Colors.transparent,
          child: Icon(
            Iconsax.add_circle,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            height: 65,
            child: SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (Rect bounds) => RadialGradient(
                      center: Alignment.topCenter,
                      stops: [.5, 1],
                      colors: [
                        Colors.blue,
                        Colors.purple,
                      ],
                    ).createShader(bounds),
                    child: IconButton(
                      onPressed: () =>
                          Navigator.of(context).pushNamed('/home_screen'),
                      icon: Icon(Iconsax.home),
                      iconSize: 30,
                      color: Colors.blue[900],
                    ),
                  ),
                  ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (Rect bounds) => RadialGradient(
                      center: Alignment.topCenter,
                      stops: [.5, 1],
                      colors: [
                        Colors.blue,
                        Colors.purple,
                      ],
                    ).createShader(bounds),
                    child: IconButton(
                      onPressed: () =>
                          Navigator.of(context).pushNamed('/profile'),
                      icon: Icon(Iconsax.car),
                      iconSize: 30,
                      color: Colors.blue[900],
                    ),
                  ),
                  ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (Rect bounds) => RadialGradient(
                      center: Alignment.topCenter,
                      stops: [.5, 1],
                      colors: [
                        Colors.blue,
                        Colors.purple,
                      ],
                    ).createShader(bounds),
                    child: IconButton(
                      onPressed: () =>
                          Navigator.of(context).pushNamed('/cart_page'),
                      icon: Icon(Iconsax.shopping_cart),
                      iconSize: 30,
                      color: Colors.blue[900],
                    ),
                  ),
                  ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (Rect bounds) => RadialGradient(
                      center: Alignment.topCenter,
                      stops: [.5, 1],
                      colors: [
                        Colors.blue,
                        Colors.purple,
                      ],
                    ).createShader(bounds),
                    child: IconButton(
                      onPressed: () =>
                          Navigator.of(context).pushNamed('/profile_page'),
                      icon: Icon(Iconsax.user),
                      iconSize: 30,
                      color: Colors.blue[900],
                    ),
                  ),
                ],
              ),
            ),
          ),
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
