import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future push(Widget screen) {
    return Navigator.push(
        this, MaterialPageRoute(builder: (context) => screen));
  }

  Future pushNamed(String routeName, {Object? args}) {
    return Navigator.pushNamed(this, routeName, arguments: args);
  }

  Future pushReplacement(Widget screen) {
    return Navigator.pushReplacement(
        this, MaterialPageRoute(builder: (context) => screen));
  }

  Future pushReplacementNamed(String routeName, {Object? args}) {
    return Navigator.pushReplacementNamed(this, routeName, arguments: args);
  }

  Future pushReplacementAll(Widget screen) {
    return Navigator.pushAndRemoveUntil(this,
        MaterialPageRoute(builder: (context) => screen), (route) => false);
  }
  Future pushReplacementAllNamed(String routeName, {Object? args}) {
    return Navigator.pushNamedAndRemoveUntil(this, routeName, (route) => false,arguments: args);
  }
}


extension Screen on BuildContext {
  get screenHeight => MediaQuery.of(this).size.height;
  get screenWidth => MediaQuery.of(this).size.width;
}