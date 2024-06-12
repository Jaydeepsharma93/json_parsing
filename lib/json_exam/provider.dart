import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing/json_exam/jsonparse.dart';

class JsonProvider extends ChangeNotifier {
  List dataList = [];
  List<JsonData> objectList = [];

  JsonProvider() {
    jsoncheking();
  }

  Future<void> jsoncheking() async {
    String? json = await rootBundle.loadString('assets/json/jsondata.json');
    dataList = jsonDecode(json);

    objectList = dataList
        .map(
          (e) => JsonData.fromJson(e),
        )
        .toList();
    notifyListeners();
  }
}
