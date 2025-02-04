import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text(
          'Hello ninjas',
          style: TextStyle(
            fontSize : 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.orange,
            fontFamily: 'IndieFlower', 
          ),
          
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('>'),
        backgroundColor: Colors.amber,
        
        
        ),
    );
  }
}