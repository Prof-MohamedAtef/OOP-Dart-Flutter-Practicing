import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  bool isEmailVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, //y
              crossAxisAlignment: CrossAxisAlignment.center, //y
              children: [
                Text(
                  "Login",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                  obscureText: isEmailVisible,
                  validator: (value) {
                    if (value!.isEmpty) {
                      // var regEx = RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                      //     .hasMatch(value)? "enter valid email!" : null;
                      // return regEx;
                      return "Please, Enter a valid email address!";
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
                      icon: isEmailVisible
                          ? Icon(Icons.email)
                          : Icon(
                        Icons.email_outlined,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        setState(() {

                        });
                        isEmailVisible = !isEmailVisible;
                        print(isEmailVisible);
                      },
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
                              color: Colors.green,
                            ),
                      onPressed: () {
                        setState(() {

                        });
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
                            color: Colors.red,
                            fontWeight: FontWeight.w400),
                      )),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red,
                        shadowColor: Colors.red[200],
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        minimumSize: Size(300, 50)),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print("Login Success!");
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
    );
  }
}
