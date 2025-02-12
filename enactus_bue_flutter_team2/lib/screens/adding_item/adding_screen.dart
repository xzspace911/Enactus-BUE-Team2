import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

class AddingItemPage extends StatefulWidget {
  const AddingItemPage({super.key});

  @override
  State<AddingItemPage> createState() => _AddingItemPageState();
}

class _AddingItemPageState extends State<AddingItemPage> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Adding Item"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 8,
                        offset: Offset(3, 6),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/add.png",
                        height: 40,
                        width: 40,
                      ),
                      Text(
                        "Add photos",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    prefixIcon: Icon(Iconsax.car),
                    labelText: "Car Model",
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Select the year",
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: ScrollDatePicker(
                    selectedDate: _selectedDate,
                    locale: Locale('en'),
                    onDateTimeChanged: (DateTime value) {
                      setState(() {
                        _selectedDate = value;
                      });
                    },
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      width: 113,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(Iconsax.kanban),
                          labelText: "KM",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      width: 113,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(Iconsax.building),
                          labelText: "City",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      width: 120,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(Iconsax.color_swatch),
                          labelText: "Color",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Iconsax.dollar_circle),
                    labelText: "Price",
                  ),
                ),
                SizedBox(height: 45),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue, Colors.purple],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.transparent),
                        elevation: WidgetStateProperty.all(20),
                      ),
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
