import 'package:flutter/material.dart';

class RChipTheme {
  RChipTheme._();

  //Light chip Theme
  static ChipThemeData lightChipTheme = ChipThemeData(
      disabledColor: Colors.grey.withOpacity(0.4),
      labelStyle: const TextStyle(color: Colors.black),
      selectedColor: Colors.blue,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      checkmarkColor: Colors.white);

  //Dark Chip Theme
  static ChipThemeData darkChipTheme = ChipThemeData(
      disabledColor: Colors.grey,
      labelStyle: const TextStyle(color: Colors.white),
      selectedColor: Colors.amber,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      checkmarkColor: Colors.white);
}
