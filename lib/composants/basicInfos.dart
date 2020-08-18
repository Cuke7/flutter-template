import 'package:flutter/material.dart';
import '../global.dart' as global;

final Widget basicInfos = Container(
  decoration: BoxDecoration(
    border: Border.all(
      color: Colors.blue,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(3),
    ),
  ),
  padding: const EdgeInsets.all(16),
  margin: const EdgeInsets.all(16),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                global.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
            ),
            Text(
              global.classe,
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
            Text(
              global.promotion,
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
            Text("Mutations : yeux aussi noirs que le vide"),
            Text("Point de blessures : 11"),
            Text("Point de folie : 5"),
            Text("Point de corruption : 0"),
          ],
        ),
      ),
    ],
  ),
);
