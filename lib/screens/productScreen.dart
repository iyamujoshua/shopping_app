import 'package:flutter/material.dart';

class productScreen extends StatelessWidget {
  // const productScreen({super.key});
  String img;
  productScreen(this.img);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 224, 224, 224),
              ),
            )
          ],
        ) ),
    );
  }
}
