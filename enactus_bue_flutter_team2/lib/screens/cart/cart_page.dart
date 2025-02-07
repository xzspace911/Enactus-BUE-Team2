import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text('Cart',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontFamily: 'BebasNeue',
            fontWeight: FontWeight.w500,
          ),
        
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('assets/icons/shopping-cart.gif'),
            width: 250,
            height: 250,
            ),
            Text('Your cart is empty',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'BebasNeue',
              fontWeight: FontWeight.w100,
            ),
            ),
          ],
        ),
      ),
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