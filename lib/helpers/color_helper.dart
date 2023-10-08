import 'package:flutter/material.dart';

Color getColor(BuildContext context, double percent) {
  if (percent >= .5) {
    return Theme.of(context).colorScheme.primary;
  } else if (percent >= .25) {
    return Colors.orange;
  }
  return Colors.red;
}
