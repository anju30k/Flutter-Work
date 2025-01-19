import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqflite_eg4/swiggy.dart';

dynamic database;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  database = openDatabase(
    join(await getDatabasesPath(), "Swiggy.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''
          CREATE TABLE food(
            orderNo INT PRIMARY KEY,
            custName TEXT,
            hotelName TEXT,
            food TEXT,
            bill REAL
            )''');
    },
  );

  SwiggyModelClass order1 = SwiggyModelClass(
      orderNo: 1,
      custName: "Anjali",
      hotelName: "Shivkrupa",
      food: "kajumasala",
      bill: 250.00);

  SwiggyModelClass order2 = SwiggyModelClass(
      orderNo: 2,
      custName: "Om",
      hotelName: "Tauji",
      food: "paneerMasala",
      bill: 270.00);

  insertOrderData(order1);

  insertOrderData(order2);

 log('${await getOrderData()}');

  order2 = SwiggyModelClass(
      orderNo: 2,
      custName: "Om",
      hotelName: "Tauji",
      food: "paneerMasala,roti,jeera rice",
      bill: 500.00);

  updateOrderData(order2);
 log('${await getOrderData()}');

  deleteOrderData(order2.orderNo);
  log('${await getOrderData()}');
}

void insertOrderData(SwiggyModelClass sobj) async {
  Database localDB = await database;

  int id = await localDB.insert("Food", sobj.swiggyMap(),
      conflictAlgorithm: ConflictAlgorithm.replace);
log("$id");
}

Future<List<Map<String, dynamic>>> getOrderData() async {
  Database localDB = await database;

  List<Map<String, dynamic>> orderMap = await localDB.query("Food");
  return orderMap;
}

void updateOrderData(SwiggyModelClass ordobj) async {
  Database localDB = await database;

  localDB.update("Food", ordobj.swiggyMap(),
      where: 'orderNo=?', whereArgs: [ordobj.orderNo]);
}

void deleteOrderData(int orderNo) async {
  Database localDB = await database;

  localDB.delete("Food", where: 'orderNo=?', whereArgs: [orderNo]);
}
