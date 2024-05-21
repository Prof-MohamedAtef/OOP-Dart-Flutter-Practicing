import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EcommerceHomePage extends StatelessWidget {
  const EcommerceHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Home Page"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Offers",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                // SizedBox(width: 100, height: 100,)
                Container(
                  height: 200,
                  width: 300,
                  // decoration: BoxDecoration(
                  //   // color: Colors.pink,
                  //   borderRadius: BorderRadius.circular(20),
                  //   image: DecorationImage(
                  //     image:
                  //   )
                    // gradient: LinearGradient(
                    //   begin: Alignment.center,
                    //   end: Alignment.bottomRight,
                    //   colors: [
                    //     Colors.pink,
                    //     Colors.amber,
                    //     Colors.green
                    //   ]
                    // )
                  // ),
                )
              ],
            ),
          ),
        ));
  }
}
