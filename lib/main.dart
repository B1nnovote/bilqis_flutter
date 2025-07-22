import 'package:bilqis_project/container/dua.dart';
import 'package:bilqis_project/container/satu.dart';
import 'package:bilqis_project/latihan1/dua.dart';
import 'package:bilqis_project/latihan1/satu.dart';
import 'package:bilqis_project/row_column/column_satu.dart';
import 'package:bilqis_project/row_column/latihan.dart';
import 'package:bilqis_project/row_column/row_column.dart';
import 'package:bilqis_project/row_column/row_satu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BelajarFlutter());
}

class BelajarFlutter extends StatelessWidget {
  const BelajarFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Latihan(),
    );
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: Text('Belajar Flutter'),
      ),
      body: Center(
        child: Text(
          'Hello Flutter',
          style: TextStyle(
            backgroundColor: Colors.blueAccent,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
