import 'package:flutter/material.dart';

class CustomHelperFunctions {
  static double getScreenHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }
}