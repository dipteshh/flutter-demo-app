// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:demo/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_img.png",
                  fit: BoxFit.cover,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter username", labelText: "Username"),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter password", labelText: "Password"),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        child: Text("Login"),
                        style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
