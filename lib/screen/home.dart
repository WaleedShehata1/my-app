import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static const String routeName = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text(
            'Welcome',
            style: TextStyle(
                fontSize: 42, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
