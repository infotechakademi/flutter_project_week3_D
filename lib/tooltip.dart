import 'package:flutter/material.dart';

class TooltipWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              tooltip: "Go to home",
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            Tooltip(
              message: "Go to home",
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Home"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
