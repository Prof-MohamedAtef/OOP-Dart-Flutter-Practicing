import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatelessWidget{

  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.pink,
            systemNavigationBarColor: Colors.pink
        ),
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(onPressed: (){}, child: const Text("Help", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),))
        ],
      ),
      body: Center(child: Text("Register", style: TextStyle(fontSize: 16),),),
    );
  }

}