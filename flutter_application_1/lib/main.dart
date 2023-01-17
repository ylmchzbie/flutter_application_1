// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    themeMode: ThemeMode.light,
    theme: ThemeData(primaryColor: Colors.amber),
    darkTheme: ThemeData(primaryColor: Colors.black),
    debugShowCheckedModeBanner: false,
    home: const HomeScreen(),
  )
);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 26, 48),
      // ignore: prefer_const_literals_to_create_immutables
      body: Column(children: [
        //image

        SizedBox(height: 25),

        //Login (please sign in to continue)
        const Text(
          'Login',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
            color: Colors.white,
          ),),
          SizedBox(height: 10),
          Text(
            'Please sign in to continue.',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(151, 255, 255, 255),
            ),
          ),

        SizedBox(height: 30),

        //email
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Email',
              ),
            ),
            ),
          ),
        ),

        SizedBox(height: 10),

        //password
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: TextField(
                obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Password',
              ),
            ),
            ),
          ),
        ),

        SizedBox(height: 10),

        //login button
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100.0),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 13, 245, 227),
              borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 32, 26, 48),
                  fontWeight: FontWeight.bold),
              ),
            )
          ),
        ),

        SizedBox(height: 10),

        //forgot password
        Text('Forgot Password?', style: TextStyle(color: Color.fromARGB(255, 13, 245, 227)),),

        //don't have an account? sign up
        Center(
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text('Dont have an account? ', style: TextStyle(color: Colors.white),),
              Text(
                'Sign Up',
                style: TextStyle(
                  color: Color.fromARGB(255, 13, 245, 227),
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}