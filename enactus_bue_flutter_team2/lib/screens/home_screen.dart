import 'package:enactus_bue_flutter_team2/screens/cars_grid_items/cars_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback:(Rect bounds) => RadialGradient(
              center: Alignment.topCenter,
              stops: [.5, 1],
              colors: [
                Colors.blue,
                Colors.purple,
              ],
            ).createShader(bounds),
              child: IconButton(
                onPressed: () => Navigator.of(context).pushNamed('/on_boarding_screen'),
                icon: Icon(Iconsax.search_favorite),
                iconSize: 30,
                color: Colors.blue[900],
              ),
            ),
          ),
        ],
        title: Text('AutoStore'),
        automaticallyImplyLeading: false,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 32,
          fontFamily: 'BebasNeue',
          fontWeight: FontWeight.w500,
          
        ),
      
      ),
      body: CarsGridItem(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue, Colors.purple],
              ),
              borderRadius: BorderRadius.circular(50),
              
        ),
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () => Navigator.of(context).pushNamed('/login'),
          backgroundColor: Colors.transparent,
          child: Icon(Iconsax.add_circle,
          color: Colors.white,
          ),
          
        ),
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          height:65,
          child: SizedBox(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback:(Rect bounds) => RadialGradient(
                  center: Alignment.topCenter,
                  stops: [.5, 1],
                  colors: [
                    Colors.blue,
                    Colors.purple,
                  ],
                ).createShader(bounds),
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pushNamed('/home_screen'),
                    icon: Icon(Iconsax.home),
                    iconSize: 30,
                    color: Colors.blue[900],
                  ),
                ),
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback:(Rect bounds) => RadialGradient(
                  center: Alignment.topCenter,
                  stops: [.5, 1],
                  colors: [
                    Colors.blue,
                    Colors.purple,
                  ],
                ).createShader(bounds),
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pushNamed('/profile'),
                    icon: Icon(Iconsax.car),
                    iconSize: 30,
                    color: Colors.blue[900],
                  ),
                ),
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback:(Rect bounds) => RadialGradient(
                  center: Alignment.topCenter,
                  stops: [.5, 1],
                  colors: [
                    Colors.blue,
                    Colors.purple,
                  ],
                ).createShader(bounds),
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pushNamed('/cart_page'),
                    icon: Icon(Iconsax.shopping_cart),
                    iconSize: 30,
                    color: Colors.blue[900],
                  ),
                ),
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback:(Rect bounds) => RadialGradient(
                  center: Alignment.topCenter,
                  stops: [.5, 1],
                  colors: [
                    Colors.blue,
                    Colors.purple,
                  ],
                ).createShader(bounds),
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pushNamed('/profile_page'),
                    icon: Icon(Iconsax.user),
                    iconSize: 30,
                    color: Colors.blue[900],
                  ),
                ),
              ],
            ),
          ),
        ),
        
      );
    
  }
}