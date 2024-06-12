import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing/json_exam/jsonparse.dart';

class JsonProvider extends ChangeNotifier {
  List dataList = []; // Specify the type of dataList
  List<JsonData> objectList = [];

  JsonProvider() {
    jsoncheking();
  }

  Future<void> jsoncheking() async {
    String? jsonString =
        await rootBundle.loadString('assets/json/jsondata.json');
    dataList = jsonDecode(jsonString);
    objectList = dataList
        .map(
          (e) => JsonData.fromJson(e),
        )
        .toList();
    notifyListeners();
  }
}
