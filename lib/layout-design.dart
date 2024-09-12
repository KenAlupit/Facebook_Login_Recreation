import 'package:flutter/material.dart';

void main() {
  runApp(FacebookPopup());
}

class FacebookPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: FacebookLoginPage(),
    );
  }
}

class FacebookLoginPage extends StatefulWidget {
  @override
  _FacebookLoginPageState createState() => _FacebookLoginPageState();
  //const FacebookLoginPage({super.key});
}

class _FacebookLoginPageState extends State<FacebookLoginPage> {
  TextEditingController _textController1 = TextEditingController();
  TextEditingController _textController2 = TextEditingController();

  String txt_username = '';
  String txt_password = '';

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed
    _textController1.dispose();
    _textController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Login',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 2, 33, 68),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                /*Text(
                  'Facebook',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),*/
                Image.asset(
                  'lib/images/fb_icon.png',
                  height: 100,
                ),
                const SizedBox(height: 50),
                TextField(
                  controller: _textController1,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email or Phone',
                      labelStyle: TextStyle(color: Colors.white)),
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _textController2,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white)),
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // Save inputs from both text fields to variables
                      txt_username = _textController1.text;
                      txt_password = _textController2.text;
                    });
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor:
                              Colors.grey[850], // Dark background for popup
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
                            "$txt_username, your password is $txt_password.",
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
                                    backgroundColor:
                                        const Color.fromARGB(255, 2, 33, 68)),
                                child: const Text('Close',
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
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: const Text(
                    'Log In',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    // Add 'Forgot Password' functionality here
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.blue[800]),
                  ),
                ),
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Add 'Create New Account' functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: const Text(
                    'Create New Account',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
