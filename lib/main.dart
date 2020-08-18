import 'package:flutter/material.dart';
import 'package:share/share.dart';

// Global variable that containt my character stats, equipements, infos...
//import 'global.dart' as global;

// Individual components
import 'composants/caracTable.dart';
import 'composants/basicInfos.dart';
import 'composants/equipment.dart';
import 'composants/talentsTraits.dart';
import 'composants/competencesTable.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FicheWidget widget.
        '/': (context) => FicheWidget(),
        // When navigating to the "/second" route, build the TalentsCompetences widget.
        '/second': (context) => TalentsCompetences(),
      },
    );
  }
}

//------------------------------------------------------------------------------
//------------------------------Main screen-------------------------------------
//------------------------------------------------------------------------------
class FicheWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.share),
              onPressed: () {
                Share.share('check out my website https://example.com');
              }),
        ],
        title: Text("Fiche de personnage"),
      ),

      // List of widgets used in the main screen :
      body: ListView(
          children: [basicInfos, caracTable, equipement, talentsTraits]),

      // Navigation drawer :
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(''),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Compétences et talents'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/second');
              },
            ),
          ],
        ),
      ),
    );
  }
}

//------------------------------------------------------------------------------
//------------------------------Second screen-----------------------------------
//------------------------------------------------------------------------------
class TalentsCompetences extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Compétences",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Talents",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [competencesTable],
            ),
            Center(child: Text("Talents")),
          ],
        ),
      ),
    );
  }
}
