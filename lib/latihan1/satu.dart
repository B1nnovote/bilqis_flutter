import 'package:bilqis_project/main_layout.dart';
import 'package:bilqis_project/latihan1/dua.dart';
import 'package:flutter/material.dart';

class LatihanSatu extends StatelessWidget {
  const LatihanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container 2',
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 83, 12, 204),
              Colors.white,
              const Color.fromARGB(255, 58, 183, 125)
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 2)],
        ),
        child: Container(
          width: 400,
          height: 400,
          margin: EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.white, Colors.deepPurple],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 2)],
          ),
          child: Container(
            width: 200,
            height: 200,
            margin: EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                colors: [const Color.fromARGB(255, 181, 183, 58), Colors.white, Colors.yellowAccent],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 2)],
            ),
            child: Center(
              child: ElevatedButton(
                child: Text('Pindah ke  1'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LatihanDua()),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
