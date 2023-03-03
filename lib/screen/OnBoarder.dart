// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import '../screen/sign_in.dart';

import '../widget/components.dart';

class OnBoarder extends StatefulWidget {
  const OnBoarder({Key? key}) : super(key: key);

  @override
  State<OnBoarder> createState() => _OnBoarderState();
}

class _OnBoarderState extends State<OnBoarder> {
  @override
  void initState() {
    Timer(const Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(context, Sign_In.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            child: Image(
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
              image: AssetImage('asset/images/Onboarding.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: DefaultBottom(
              fontSize: 36,
              ontap: () =>
                  Navigator.pushReplacementNamed(context, Sign_In.routeName),
              titel: 'Start',
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
