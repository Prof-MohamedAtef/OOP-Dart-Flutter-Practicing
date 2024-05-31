import 'package:amit_training/24may/product_model.dart';
import 'package:flutter/material.dart';

class BuilderProduct extends StatelessWidget {
  Products products;

  BuilderProduct({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height:  300,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
        // image: const DecorationImage(
        //     fit: BoxFit.fitHeight,
        //     image: AssetImage()
      ),
      child: Column(
        children: [
          Image.asset(
            products.pic,
            height: 100,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                products.name,
                style: TextStyle(fontSize: 17, color: Colors.grey[700]),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ))
            ],
          ),
          //  Text("${products.dis ?? ""} "),
        ],
      ),
    );
  }
}
