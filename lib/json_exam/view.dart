import 'package:flutter/material.dart';
import 'package:json_parsing/json_exam/provider.dart';
import 'package:provider/provider.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(Provider.of<JsonProvider>(context).objectList[0].posts![2].id.toString()),
      ),
    );
  }
}
