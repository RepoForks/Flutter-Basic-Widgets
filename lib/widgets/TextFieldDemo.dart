import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  static final String routeName = "/textField";
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  TextEditingController _txtNameCtrl;
  String _lblText = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _txtNameCtrl = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("TextField Demo")),
        body: Column(
          children: <Widget>[
            TextField(
              controller: _txtNameCtrl,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                _lblText,
                style: Theme.of(context).textTheme.title,
              ),
            ),
            RaisedButton(
              child: Text("GET TEXT"),
              onPressed: () {
                setState(() {
                  _lblText = _txtNameCtrl.text;
                });
              },
            )
          ],
        ));
  }
}
