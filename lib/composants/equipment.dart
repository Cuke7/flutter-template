import 'package:flutter/material.dart';
import '../global.dart' as global;

final Widget equipement = Container(
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
                "Équipement",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
            ),
            Text("Pistolet radiant"),
            Text("Canne métalique"),
            Text("Tarot de l'empereur"),
            Text("Armure composite"),
            Text("Foulard en soie"),
            Text("Toge de la nobilite"),
            Text("Porte bonheur"),
            Text("Microvox")
          ],
        ),
      ),
    ],
  ),
);
