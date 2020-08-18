import 'package:flutter/material.dart';
import '../global.dart' as global;

final Widget competencesTable = Container(
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
    child: DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Name',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Carac',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Rang',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
      rows: global
          .competences // Loops through dataColumnText, each iteration assigning the value to element
          .map(
            ((element) => DataRow(
                  cells: <DataCell>[
                    DataCell(Text(element["name"])),
                    DataCell(Text(element["carac"])),
                    DataCell(Text(element["rang"])),
                  ],
                )),
          )
          .toList(),
    ));
