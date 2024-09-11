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
                  title: Center(
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
                    style: TextStyle(
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
                        child: Text('Close'),
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