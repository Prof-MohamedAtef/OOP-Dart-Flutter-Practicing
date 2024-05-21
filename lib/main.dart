import 'dart:io';

import 'package:amit_training/ecommerce/ecommerce_home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EcommerceHomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 140,
          backgroundColor: Colors.white,
          leading: Center(child: Text("WhatsApp", style: TextStyle(color: Colors.green[500], fontSize: 22, fontWeight: FontWeight.bold),)),
          // title: Text("Home", style: TextStyle(fontSize: 14),),
          // centerTitle: true,
          actions: [
            new IconButton(
              icon: new Image.asset('assets/image/ic_camera.png', width: 25, height: 25, fit: BoxFit.cover,),
              padding: const EdgeInsets.all(5),
              // tooltip: 'Closes application',
              onPressed: () => {},
            ),
            IconButton(onPressed: (){print("clicked icon!");}, icon: Icon(Icons.search)),
            new IconButton(
              icon: new Image.asset('assets/image/ic_dots.png', width: 25, height: 25, fit: BoxFit.cover,),
              padding: const EdgeInsets.all(5),
              // tooltip: 'Closes application',
              onPressed: () => {},
            )
          ],
        ),
        body: SafeArea(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, //x
              crossAxisAlignment: CrossAxisAlignment.center, // y
              children: [
                Text("Hello World", style: TextStyle(
                    fontSize: 22, color: Colors.red
                ),),
                Text("Hello World", style: TextStyle(
                    fontSize: 22, color: Colors.red
                ),),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start , //x
                  crossAxisAlignment: CrossAxisAlignment.center, //y
                  children: [
                    Text("Hello World", style: TextStyle(
                        fontSize: 22, color: Colors.red
                    ),),
                    Text("Hello World", style: TextStyle(
                        fontSize: 22, color: Colors.red
                    ),)
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
