import 'package:bilqis_project/main_layout.dart';
import 'package:flutter/material.dart';

class ColumnSatu extends StatelessWidget {
  const ColumnSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        title: 'Column Satu',
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Widget Text 1'),
            Text('Widget Text 2'),
            Text('Widget Text 3'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Row Widget 1'),
                Text('Row Widget 2'),
                Text('Row Widget 3'),
              ],
            )
          ],
        ));
  }
}
