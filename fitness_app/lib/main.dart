import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

void main() {
  runApp(FitnessApp());
}

class FitnessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FitnessHomePage(),
    );
  }
}

class FitnessHomePage extends StatefulWidget {
  @override
  _FitnessHomePageState createState() => _FitnessHomePageState();
}

class _FitnessHomePageState extends State<FitnessHomePage> {
  final _formKey = GlobalKey<FormState>();
  String name = "";
  double weight = 0;
  double height = 0;
  int activityLevel = 1;
  int aim = 1;

  double nkcal = 0;
  double deitkcal = 0;
  double protein = 0;
  double fats = 0;
  double carbs = 0;

  void calculateResults() {
    double factor;
    switch (activityLevel) {
      case 1:
        factor = 24;
        break;
      case 2:
        factor = 27;
        break;
      case 3:
        factor = 29.5;
        break;
      case 4:
        factor = 30;
        break;
      case 5:
        factor = 30.5;
        break;
      case 6:
        factor = 31;
        break;
      case 7:
        factor = 32;
        break;
      default:
        factor = 24;
    }

    double pw = height * height * factor;
    double aw = (weight - pw) * 0.4;
    double rw = aw + pw;
    nkcal = rw * factor;

    if (aim == 1) {
      deitkcal = nkcal - 400;
    } else if (aim == 2) {
      deitkcal = nkcal;
    } else if (aim == 3) {
      deitkcal = nkcal + 400;
    }

    protein = weight * 2.2;
    fats = (deitkcal * 0.25) / 9;
    carbs = (deitkcal - ((protein * 4) + (fats * 9))) / 4;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fitness Calculator",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Name Input
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter Your Name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Iconsax.user),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your name";
                  }
                  return null;
                },
                onChanged: (value) => name = value,
              ),
              SizedBox(height: 16),
              // Weight Input
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter Your Weight (kg)",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Iconsax.weight),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      double.tryParse(value) == null) {
                    return "Please enter a valid weight";
                  }
                  return null;
                },
                onChanged: (value) => weight = double.parse(value),
              ),
              SizedBox(height: 16),
              // Height Input
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter Your Height (m)",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Iconsax.ruler),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      double.tryParse(value) == null) {
                    return "Please enter a valid height";
                  }
                  return null;
                },
                onChanged: (value) => height = double.parse(value),
              ),
              SizedBox(height: 16),
              // Activity Level Dropdown
              DropdownButtonFormField<int>(
                decoration: InputDecoration(
                  labelText: "Select Activity Level",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Iconsax.medal),
                ),
                value: activityLevel,
                items: [
                  DropdownMenuItem(child: Text("No Exercise"), value: 1),
                  DropdownMenuItem(child: Text("Little Exercise"), value: 2),
                  DropdownMenuItem(
                      child: Text("3 Times Gym Exercise"), value: 3),
                  DropdownMenuItem(
                      child: Text("4 Times Gym Exercise"), value: 4),
                  DropdownMenuItem(
                      child: Text("5 Times Gym Exercise"), value: 5),
                  DropdownMenuItem(
                      child: Text("6 Times Gym Exercise"), value: 6),
                  DropdownMenuItem(
                      child: Text("Daily Gym Exercise"), value: 7),
                ],
                onChanged: (value) => setState(() => activityLevel = value!),
              ),
              SizedBox(height: 16),
              // Aim Dropdown
              DropdownButtonFormField<int>(
                decoration: InputDecoration(
                  labelText: "Select Your Aim",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Iconsax.award),
                ),
                value: aim,
                items: [
                  DropdownMenuItem(child: Text("Lose Weight"), value: 1),
                  DropdownMenuItem(child: Text("Maintain Weight"), value: 2),
                  DropdownMenuItem(child: Text("Gain Weight"), value: 3),
                ],
                onChanged: (value) => setState(() => aim = value!),
              ),
              SizedBox(height: 16),
              // Calculate Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() => calculateResults());
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: Text(
                  "Calculate",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
              // Results Table
              if (nkcal > 0)
                Table(
                  border: TableBorder.all(color: Colors.black),
                  children: [
                    TableRow(
                      children: [
                        TextCell("Calories Needed"),
                        TextCell(nkcal.toStringAsFixed(2)),
                        
                        
                        
                        
                       
                      ],
                    ),TableRow(
                      children: [
                        TextCell("Calories to take"),
                        TextCell(deitkcal.toStringAsFixed(2)),
                        
                      ],
                    ),TableRow(
                      children: [
                        TextCell("Protein"),
                        TextCell(protein.toStringAsFixed(2)),
                      ],
                    ),TableRow(
                      children: [
                        TextCell("Fats"),
                        TextCell(fats.toStringAsFixed(2)),
                      ],
                    ),
                    TableRow(
                      children: [
                         TextCell("Carbs"),
                        
                        
                        
                        TextCell(carbs.toStringAsFixed(2)),
                      ],
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextCell extends StatelessWidget {
  final String text;
  TextCell(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
