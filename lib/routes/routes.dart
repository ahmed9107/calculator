import 'package:calculator/view/pages/calculator.dart';
import 'package:calculator/view/pages/history.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const Calculator(),
  '/history': (context) => History(),
};