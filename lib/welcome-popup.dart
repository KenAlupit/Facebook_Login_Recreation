import 'package:flutter/material.dart';

void main() {
  runApp(FacebookPopup());
}

class FacebookPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String username = "JohnDoe";
  final String password = "password123";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  backgroundColor: Colors.grey[850], // Dark background for popup
                  
                  title: const Center(
                    child: Text(
                      "Welcome!",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Light text in dark mode
                      ),
                    ),
                  ),
                  content: Text(
                    "$username, your password is $password.",
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  actions: [
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                          //Color of the Elevated button
                          backgroundColor: const Color.fromARGB(255, 2, 33, 68)),
                        child: const Text(
                          'Close',
                          style: TextStyle(
                            //Color of the Text in the Elevated button
                            color: Colors.white,
                          )),
                      ),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Click this to show the Popup'),
        ),
      ),
    );
  }
}