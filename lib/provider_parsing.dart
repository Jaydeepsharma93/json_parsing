import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing/json_parse.dart';

class ProviderParsing extends ChangeNotifier {
  List dataList = [];
  List<Users> objectList = [];

  ProviderParsing() {
    jsoncheking();
  }

  Future<void> jsoncheking() async {
    String? json = await rootBundle.loadString('assets/json/data.json');
    dataList = jsonDecode(json);

    objectList = dataList
        .map(
          (e) => Users.fromJson(e),
        )
        .toList();
    notifyListeners();
  }
}
