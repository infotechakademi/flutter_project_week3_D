import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Table(
          children: <TableRow>[
            TableRow(
              decoration: BoxDecoration(color: Colors.greenAccent.shade100),
              children: [
                Text("Header 1"),
                Text("Header 2"),
              ],
            ),
            TableRow(
              children: [
                Text("Cell 1"),
                Row(
                  children: [
                    Expanded(child: Text("Cell 2")),
                    Expanded(child: Text("Cell 3")),
                  ],
                )
              ],
            ),
            TableRow(
              children: [
                Text("Cell 1"),
                Text("Cell 2"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
