import 'package:flutter/material.dart';
import 'package:json_parsing/json_exam/provider.dart';

import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: ListView.builder(
          itemCount: Provider.of<JsonProvider>(context,listen: true).objectList[0].posts!.length,
          itemBuilder:(context, index) => ListTile(
            title: Text(Provider.of<JsonProvider>(context,listen: true).objectList[index].posts![index].id.toString()),
          ),)
    );
  }
}