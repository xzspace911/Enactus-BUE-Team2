import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/product.dart';



class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
     required this.itemIndex,
     required this.product,
     required this.press,
  });
  
  final int itemIndex;
  final Product product;
  final Function press;





  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
     Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding/2,
      ),
      height: 190.0,
      child: InkWell(
        onTap: press(),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: const Color.fromARGB(255, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 25,
                    color: Colors.black26,
                  )
                ]
              ),
            ),
        
        
        
            
            Positioned(
              top : 0.0,
              right : 0.0,
              child:Container(
              
              padding:
               EdgeInsets.symmetric(
                horizontal: kDefaultPadding),
              height:160.0,
              width: 200,
              child: Image.asset(
                product.image,
              fit: BoxFit.cover,
              ),
            )
          ),
        
        
        
          Positioned(
            bottom: 0.0,
            left: 0.0,
            child: SizedBox(
            height: 136,
            width: size.width - 200 ,
            child: Column(
              children: [
        
        
                
                Padding(
                  
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Text(
                    product.title,
                  style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
        
        
        
        
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Text(
                    product.subTitle,
                  style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
        
        
        
        
        
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding*1.5,
                    vertical: kDefaultPadding/5,
                  ),
                  margin: EdgeInsets.fromLTRB(0, 17, 0, 10),
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Text(
                    'Price : ${product.price}\$'
                    ),
                ),
        
        
        
        
        
        
                
              ],
            ),
          )
         ),
          ],
        ),
      ),
      
    );
    
    
  }
}