import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic database;

class Player {
//instance variables
  final String name;
  final int jerNo;
  final int runs;
  final double avg;

//constructor
  Player(
      {required this.name,
      required this.jerNo,
      required this.runs,
      required this.avg});

//Map to arrange in key value format
  Map<String, dynamic> playerMap() {
    return {
      'name': name,
      'jerNo': jerNo,
      'runs': runs,
      'avg': avg,
    };
  }

//to print data in format
  @override
  String toString() {
    return '''{
    name:$name,
    jerNo:$jerNo,
    runs:$runs,
    avg:$avg,
  }''';
  }
}

Future<List<Player>> getPlayerData() async {
  final localDB = await database;

  List<Map<String, dynamic>> listPlayers = await localDB.query("Player");

  return List.generate(listPlayers.length, (i) {
    return Player(
        name: listPlayers[i]['name'],
        jerNo: listPlayers[i]['jerNo'],
        runs: listPlayers[i]['runs'],
        avg: listPlayers[i]['avg']);
  });
}

Future insertPlayerData(Player obj) async {
  final localDB = await database;

  await localDB.insert(
      'Player', //Table insert
      obj.playerMap(), //method to obtain data in key value pair
      conflictAlgorithm:
          ConflictAlgorithm.replace //replace if same data is present
      );
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  database = openDatabase(
    join(await getDatabasesPath(), "PlayerDB.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''CREATE TABLE Player(
        name TEXT,
        jerNo INTEGER PRIMARY KEY,
        runs INT,
        avg REAL
        )
        ''');
    },
  );

//insert data
  Player batsman1 =
      Player(name: "Virat Kholi", jerNo: 45, runs: 8000, avg: 30.33);

  await insertPlayerData(batsman1);

  //insert data
  Player batsman2 =
      Player(name: "Rohit Sharama", jerNo: 30, runs: 9000, avg: 50.33);

  await insertPlayerData(batsman2);

  log('${await getPlayerData()}');
}
