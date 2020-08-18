import 'package:flutter/material.dart';
import '../global.dart' as global;

final Widget talentsTraits = Container(
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
                "Talents et traits",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
            ),
            Text("Foi inébremlable"),
            Text("Armure de mépris"),
            Text("Technoharmonisation"),
            Text("Résistance (peur)"),
            Text("Arme de poing"),
            Text("Navigator"),
            Text("Nyctalope"),
            Text(
              "+10 au tests en rapport avec la noblesse",
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
            Text(
              "-10 sur les connaissances du credo impérial",
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
            Text(
              "-5 aux tests sociaux en rapport avec l'éclésiarchie",
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
            Text(
              "-10 aux interractions avec les individus extérieurs à l'impérium",
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);
