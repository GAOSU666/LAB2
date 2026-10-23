
import 'package:flutter/material.dart';

void clicked() {
  print("The button is clicked");
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink, Colors.blue],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Hello World",
                  style: TextStyle(
                    color: Color.fromARGB(255, 47, 255, 99),
                    fontSize: 50,
                  ),
                ),
              ),
              TextButton(
                onPressed: clicked,
                child: Text(
                  "Click me!",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
