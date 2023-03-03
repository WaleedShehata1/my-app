// ignore_for_file: camel_case_types, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:my_app/screen/sign_up.dart';
import 'package:my_app/widget/components.dart';



import 'home.dart';

class Sign_In extends StatelessWidget {
  Sign_In({Key? key}) : super(key: key);
  static const String routeName = 'Sign_In';

  var UserName = TextEditingController();
  var Password = TextEditingController();
  bool lock_password = false;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const Image(
                      height: 250,
                      width: 250,
                      fit: BoxFit.fill,
                      image: AssetImage(
                          'asset/images/—Pngtree—log in login interface computer_3945571.png'),
                    ),
                    const Text(
                      "Welcome Back!",
                      style: TextStyle(
                          fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
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
                      height: 15,
                    ),
                    DefaultFormField(
                      Validator: (value) {
                        if (value!.trim().isEmpty) {
                          return 'Please enter your Password';
                        }
                        return null;
                      },
                      HintText: 'Password',
                      Controller: Password,
                      PrefixIcon: const Icon(Icons.lock),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MaterialButton(
                          height: 5,
                          onPressed: () {},
                          child: const Text(
                            'Forget Password?',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DefaultBottom(
                      ontap: () {
                        if (formKey.currentState?.validate() == false) {
                          return;
                        }
                        Navigator.pushReplacementNamed(
                            context, Home.routeName);
                      },
                      width: double.infinity,
                      titel: 'Log In',
                      fontSize: 26,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Sign_Up.routeName);
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 15),
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
      ),
    );
  }
}
