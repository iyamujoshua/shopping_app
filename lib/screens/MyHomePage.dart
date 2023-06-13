import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List catList = [
    "All"
        "Best Selling"
        "Jackets"
        "Shirt"
        "Pant"
        "Bag"
  ];

  List imgList = [
    "Black Pant"
    "Black T-Shirt"
    "Cover"
    "Ladies Bag"
    "Warm Jacket"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: 
        Padding(
          padding: EdgeInsets.only(top: 20, left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width /1.5,
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F8FA),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: TextFormField(
                      decoration: InputDecoration(
                        label: Text("Find your product"),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, size: 30, color: Colors.grey,)
                      ),
                    ),
                  )
                  
                ],
              ),
              ),
            ],
          ),
          )
        ),
      ),
    );
  }
}
