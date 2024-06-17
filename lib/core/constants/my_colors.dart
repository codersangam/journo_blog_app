import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

class MyColors {
  MyColors._();

  static Color primaryColor = FlavorConfig.instance.variables['primaryColor'];
  static const Color secondaryColor = Colors.green;
  static const Color white = Colors.white;
}
