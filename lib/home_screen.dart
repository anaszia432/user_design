import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  String? email;
  String? password;

  HomeScreen({super.key, required this.email, required this.password});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 42, 52),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Color.fromARGB(255, 11, 42, 52),
        title: Center(
            child: Text(
          'Home Screen',
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Center(
        child: Container(
          height: 650,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 217, 215, 215),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome to Home Screen',
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  'Email Id: ${widget.email}',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Password: ${widget.password}',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
