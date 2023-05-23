import 'package:flutter/material.dart';

ElevatedButton gIconButton(
    Icon gIcon, Text gText, double gWidth, double gHeight) {
  return ElevatedButton.icon(
    onPressed: () {},
    icon: gIcon,
    label: gText,
    style: ButtonStyle(
        elevation: const MaterialStatePropertyAll(0),
        fixedSize: MaterialStatePropertyAll(Size(gWidth, gHeight))),
  );
}

ElevatedButton gButton(Text gText, double gWidth, double gHeight, dynamic gFunction) {
  return ElevatedButton(
    onPressed: (){gFunction;},
    style: ButtonStyle(
        elevation: const MaterialStatePropertyAll(0),
        fixedSize: MaterialStatePropertyAll(Size(gWidth, gHeight))),
    child: gText,
  );
}
