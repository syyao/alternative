import 'package:flutter/material.dart';

Widget btn(String title, Color background) {
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: background, borderRadius: BorderRadius.circular(5)),
    child: Text(
      title,
      style: TextStyle(color: Colors.white),
    ),
  );
}
