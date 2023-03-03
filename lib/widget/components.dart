
import 'package:flutter/material.dart';

class validate {}

class DefaultBottom extends StatelessWidget {
  DefaultBottom({
    required this.ontap,
    required this.width,
    required this.titel,
    this.fontSize,
    super.key,
  });

  Function()? ontap;
  double? width;
  double? fontSize;
  String titel;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: ontap,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15),
        ),
        width: width,
        height: 70,
        alignment: Alignment.center,
        child: Text(
          titel,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class DefaultFormField extends StatelessWidget {
  DefaultFormField({
    required this.Controller,
    required this.HintText,
    required this.PrefixIcon,
    this.KeyboardType,
    required this.Validator,
    super.key,
  });

  TextEditingController Controller;

  String HintText;

  Widget PrefixIcon;
  TextInputType? KeyboardType;
  String? Function(String?) Validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: Validator,
      controller: Controller,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      keyboardType: KeyboardType ?? TextInputType.text,
      decoration: InputDecoration(
        hintText: HintText,
        prefixIcon: PrefixIcon,
        fillColor: const Color.fromARGB(255, 249, 247, 249),
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(25)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(25)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            25,
          ),
          borderSide: BorderSide(
            color: Colors.grey,
            width: 3,
          ),
        ),
      ),
    );
  }
}