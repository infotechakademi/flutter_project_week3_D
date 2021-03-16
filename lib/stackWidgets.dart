import 'package:flutter/material.dart';

class StackWidgets extends StatefulWidget {
  @override
  _StackWidgetsState createState() => _StackWidgetsState();
}

class _StackWidgetsState extends State<StackWidgets> {
  int stackIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            stackIndex = (stackIndex == 0) ? 1 : 0;
          });
        },
      ),
      body: Column(
        children: [
          Expanded(
              child: Stack(
            children: [
              Container(
                margin: EdgeInsets.all(25),
                color: Colors.red,
              ),
              Align(
                alignment: Alignment(0, 0),
                child: Container(
                  margin: EdgeInsets.all(25),
                  color: Colors.yellow.withOpacity(0.5),
                ),
              ),
            ],
          )),
          Divider(color: Colors.grey.shade900),
          Expanded(
            child: IndexedStack(
              index: stackIndex,
              children: [
                Container(
                  margin: EdgeInsets.all(25),
                  color: Colors.red.withOpacity(0.5),
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  color: Colors.yellow.withOpacity(0.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
