import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class CarCardDetails extends StatelessWidget {
  final String carName;
  final String carDetails;
  final String carImage;

   CarCardDetails({
    super.key,
    required this.carName,
    required this.carDetails,
    required this.carImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        
        leading: 
          IconButton(onPressed: () => Navigator.of(context).pop(),
           icon: Icon(Iconsax.arrow_left_2)
           ),
        
        title: Text(carName),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 26,
          fontFamily: 'BebasNeue',
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Hero(
              tag: 15,
              child: Image.asset(
                carImage,
                height: 250,
                width: 250,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
              child: Text(
                carDetails,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'PlayFair',
                ),
              ),
            ),
            const Spacer(), 
            Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue, Colors.purple],
            ),
            borderRadius: BorderRadius.circular(15),
          ),
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed('/cart_page'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Add to Cart',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40), // Space between button and navigation bar
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
