import 'package:flutter/material.dart';

InputDecoration inputDecoration (String hint) {
  return InputDecoration(
    hintText: hint,
    filled: true,
    fillColor: Colors.white,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
        width: 1.0
      )
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: Colors.blue,
            width: 1.0
        )
    ),
  );
}