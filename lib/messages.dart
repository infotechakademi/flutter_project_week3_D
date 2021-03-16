import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Messages extends StatefulWidget {
  Messages({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  var snackBar = SnackBar(
    content: Text("SnackBar"),
    backgroundColor: Colors.red,
  );

  var _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text("Display Snackbar"),
              onPressed: () {
                _scaffoldKey.currentState.showSnackBar(snackBar);
              },
            ),
            ElevatedButton(
              child: Text("Display ToastMessage"),
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "ToastMessage",
                  gravity: ToastGravity.TOP,
                  backgroundColor: Colors.green.shade900,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
        onPressed: () {
          if (_scaffoldKey.currentState.hasDrawer)
            _scaffoldKey.currentState.openDrawer();
          else
            print("Drawer is not found");
        },
      ),
    );
  }
}
