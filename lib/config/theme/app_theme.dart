import 'package:flutter/material.dart';

const Color _customColor = Colors.orange;

const List<Color> _colorTheme = [
  _customColor,
  Colors.blue,
  Colors.green,
  Colors.pink,
  Colors.purple,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor <= _colorTheme.length - 1,
        'Los colores deben estar entre 0 y ${_colorTheme.length - 1}',
      );
  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorTheme[selectedColor],
      brightness: Brightness.light
    );
  }
}
