// ignore_for_file: camel_case_types, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';


import '../widget/components.dart';
import 'home.dart';

class Sign_Up extends StatelessWidget {
  Sign_Up({Key? key}) : super(key: key);
  static const String routeName = 'signup';
  var UserName = TextEditingController();
  var Password = TextEditingController();
  var phone = TextEditingController();

  var confirmPassword = TextEditingController();
  bool lock_password = false;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.blue,
              size: 30,
            )),
        toolbarHeight: 32,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        height: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: double.infinity,
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    children: [
                      DefaultFormField(
                        Validator: (value) {
                          if (value!.trim().isEmpty) {
                            return 'Please enter your User Name';
                          }
                          return null;
                        },
                        Controller: UserName,
                        HintText: 'User Name',
                        PrefixIcon: const Icon(Icons.person),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DefaultFormField(
                        KeyboardType: TextInputType.phone,
                        Validator: (value) {
                          if (value!.trim().isEmpty) {
                            return 'Please enter your Phone';
                          }
                          return null;
                        },
                        HintText: 'Phone',
                        Controller: phone,
                        PrefixIcon: const Icon(Icons.phone),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DefaultFormField(
                        Validator: (value) {
                          if (value!.trim().isEmpty) {
                            return 'Please enter your Password';
                          } else if (value.trim().isEmpty) {
                            return 'No';
                          }
                          return null;
                        },
                        HintText: 'Password',
                        Controller: Password,
                        PrefixIcon: const Icon(Icons.lock),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DefaultFormField(
                        Validator: (value) {
                          if (value!.trim().isEmpty) {
                            return 'Please enter your Confirm Password';
                          }
                          if (value.trim().isEmpty) {
                            return 'No';
                          } else if (Password.text.trim() !=
                              confirmPassword.text.trim()) {
                            return "your Password doesn't same";
                          }
                          return null;
                        },
                        HintText: 'Confirm',
                        Controller: confirmPassword,
                        PrefixIcon: const Icon(Icons.lock),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  DefaultBottom(
                    ontap: () {
                      if (formKey.currentState?.validate() == false) {
                        return;
                      }
                      Navigator.pushNamed(context, Home.routeName);
                    },
                    width: double.infinity,
                    titel: 'Sign Up',
                    fontSize: 26,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Login Here',
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
