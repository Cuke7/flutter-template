import 'package:flutter/material.dart';
import '../global.dart' as global;

final Widget caracTable = Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.blue,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(3),
      ),
    ),
    padding: const EdgeInsets.all(16),
    margin: const EdgeInsets.only(right: 16, left: 16),
    child: DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Compétence',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Valeur',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Amélioration',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
      rows: global
          .stats // Loops through dataColumnText, each iteration assigning the value to element
          .map(
            ((element) => DataRow(
                  cells: <DataCell>[
                    DataCell(Text(element["name"])),
                    DataCell(Text(element["value"])),
                    DataCell(Text(element["amélioration"])),
                  ],
                )),
          )
          .toList(),
    ));
