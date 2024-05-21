
import 'package:amit_training/register/registration_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../ecommerce/ecommerce_home_screen.dart';
import '../whatsapp/whatsapp_home.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var textMobileController = TextEditingController();

  var textPasswordController = TextEditingController();

  var textEmailController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isVisible = true;

  bool isEmailVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.pink, systemNavigationBarColor: Colors.pink),
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                "Help",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 30, right: 30),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center, //y
                children: [
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    // obscureText: isEmailVisible,
                    validator: (value) {
                      if (value!.isEmpty) {
                        RegExp regExp = new RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                        return regExp.hasMatch(value)
                            ? null
                            : "Please, Enter a valid email address!";
                      }
                    },
                    controller: textEmailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: "Enter email",
                      labelText: "Email",
                      labelStyle: TextStyle(),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.email)
                        // isEmailVisible
                        //     ?
                        //     : Icon(
                        //         Icons.email_outlined,
                        //         color: Colors.pink,
                        //       )
                        ,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // TextField(
                  //   controller: textPasswordController,
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(5)),
                  //     hintText: "Enter password",
                  //     labelText: "password",
                  //     labelStyle: TextStyle(),
                  //     suffixIcon: Icon(Icons.remove_red_eye),
                  //   ),
                  // ),
                  TextFormField(
                    obscureText: isVisible,
                    obscuringCharacter: "*",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter a valid password!";
                      }
                    },
                    controller: textPasswordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: "Enter password",
                      labelText: "password",
                      labelStyle: TextStyle(),
                      suffixIcon: IconButton(
                        icon: isVisible
                            ? Icon(Icons.password)
                            : Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.pink,
                              ),
                        onPressed: () {
                          setState(() {});
                          isVisible = !isVisible;
                          print(isVisible);
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: textMobileController,
                    validator: (value) {
                      RegExp regExp = new RegExp("^01[0-9]{9}");
                      return regExp.hasMatch(value!)
                          ? null
                          : "Please Enter a valid Mobile";
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Enter mobile",
                        suffixIcon: Icon(Icons.call),
                        labelText: "Mobile"),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.pink,
                              fontWeight: FontWeight.w400),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        const Text(
                          "Create a new ",
                          style: TextStyle(fontSize: 16),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const RegisterPage()));
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const RegisterPage()),
                                (route) => true);
                          },
                          child: const Text(
                            "account ?",
                            style: TextStyle(fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.pink,
                          shadowColor: Colors.pink[200],
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          minimumSize: Size(300, 50)),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          print("Login Success!");
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  // builder: (context) => WhatsAppHome()),
                                builder: (context) => EcommerceHomePage()),

                              (route) => false);
                        }
                        print("done");
                        print(textEmailController.text);
                        print(textPasswordController.text);
                        print(textMobileController.text);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
