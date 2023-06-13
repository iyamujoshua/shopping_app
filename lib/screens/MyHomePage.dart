import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});

  List catList = [
        "All",
        "Best Selling",
        "Jackets",
        "Shirt",
        "Pant",
        "Bag"
  ];

  List imgList = [
        "Black Pant",
        "Black T-Shirt",
        "Ladies Bag",
        "Warm Jacket",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(top: 20, left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        color: Color(0xFFF7F8FA),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            label: Text("Find your product"),
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.grey,
                            )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Color(0xFFF7F8FA),
                          borderRadius: BorderRadius.circular(20)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            size: 30,
                            color: Colors.grey,
                          )),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(right: 25, top: 20),
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset("asset/cover.jpg",
                  width: MediaQuery.of(context).size.width /1.2,
                  fit: BoxFit.contain,
                  ),
                  
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(top: 25,),
                  child: Row(
                    children: [
                      for ( int i=0; i<catList.length; i++)
                      Container(
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.symmetric(
                          vertical: 10, 
                          horizontal: 18,
                          ),
                        decoration: BoxDecoration(
                          color: catList[i]== "All"
                          ?Color(0xFFFD725A)
                          :Color(0xFFF7F8FA),
                          
                          borderRadius: BorderRadius.circular(18)
                        ),
                        child: Text(catList[i]),
                      ),
                    ],
                  ),
                  ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
