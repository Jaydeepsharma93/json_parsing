import 'package:flutter/material.dart';
import 'package:json_parsing/json_exam/provider.dart';
import 'package:json_parsing/json_exam/view.dart';
import 'package:json_parsing/provider_parsing.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ProviderParsing(),
      ),
      ChangeNotifierProvider(create: (context) => JsonProvider(),)
    ],
    child: const Checking(),
  ));
}

class Checking extends StatelessWidget {
  const Checking({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ViewScreen(),
    );
  }
}



