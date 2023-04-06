import 'package:flutter/material.dart';

outlineBoxDecoration(context, {Color? bgColor}) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: bgColor ?? Colors.transparent,
    border: Border.all(color: Theme.of(context).focusColor),
  );
}
